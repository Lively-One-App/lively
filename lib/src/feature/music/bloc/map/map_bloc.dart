// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:meta/meta.dart';

import 'package:lively/src/feature/music/logic/online_store_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final OnlineStoreImpl _store;
  final SharedPreferences _prefs;

  MapBloc(
    this._store,
    this._prefs,
  ) : super(const MapInitial(isShared: false, listMarkers: [])) {
    final StreamController<Map<String, dynamic>> _controller =
        StreamController<Map<String, dynamic>>();
    _controller.stream.listen((event) {
      List<Map> listMarkers = [];
      List<SinglePresenceState> presenceStates = event['data'];

      for (var i = 0; i < presenceStates.length; i++) {
        listMarkers.add({
          'latitude': presenceStates[i].presences.first.payload['geopoint']
              ['latitude'],
          'longitude': presenceStates[i].presences.first.payload['geopoint']
              ['longitude']
        });
      }
      add(ChangeMarkersEvent(listMarkers: listMarkers));
    });
    getIsShared();
    _store.setGeoPointController(_controller.sink);
    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 50,
    );
    StreamSubscription<Position>? positionStream;

    on<SharePositionEvent>((event, emit) async {
      await _store.addUpdateMarker(event.position);
      emit(PositionChanged(
        position: event.position,
        isShareMyPosition: true,
        listMarkers: state.listMarkers,
      ));
    });

    on<ChangeMarkersEvent>((event, emit) {
      emit(FetchChangeMarkers(
        listMarkers: event.listMarkers,
        isShareMyPosition: state.isShareMyPosition,
      ));
    });

    on<OffSharedPositionEvent>((event, emit) async {
      _prefs.setBool('isShared', false);

      positionStream?.pause();
      await _store.removeMarker();
      emit(OffSharedPositionState(
        listMarkers: state.listMarkers,
      ));
    });

    on<GetLastKnownPositionEvent>((event, emit) async {
      final position = await _requestGps();
      if (position != null) {
        emit(PositionChanged(
          position: position,
          isShareMyPosition: state.isShareMyPosition,
          listMarkers: state.listMarkers,
        ));
      }
    });
    on<OnSharedPositionEvent>((event, emit) async {
      _prefs.setBool('isShared', true);
      try {
        if (positionStream == null) {
          positionStream =
              Geolocator.getPositionStream(locationSettings: locationSettings)
                  .listen((Position position) {
            add(SharePositionEvent(position: position));
          });
        } else {
          positionStream?.resume();
          final position = await _requestGps();
          if (position != null) {
            add(SharePositionEvent(
              position: position,
            ));
          }
        }
        emit(OnSharedPositionState(
            isShareMyPosition: state.isShareMyPosition,
            listMarkers: state.listMarkers));
      } catch (e) {
        emit(ErrorState(
            error: e.toString(),
            isShareMyPosition: state.isShareMyPosition,
            listMarkers: state.listMarkers));
      }
    });
  }

  Future<Position?> _requestGps() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getLastKnownPosition();
  }

  void getIsShared() async {
    //emit(MapInitial(isShared: true == await _prefs.getBool('isShared')));
    //return true == await _prefs.getBool('isShared');
    if(true == await _prefs.getBool('isShared')){
      add(const OnSharedPositionEvent());
    }
  }
}
