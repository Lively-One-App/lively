// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:meta/meta.dart';

import 'package:lively/src/feature/music/logic/online_store_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final OnlineStoreImpl _store;

  bool isShareMyPosition = false;

  MapBloc(this._store) : super(MapInitial()) {
    Map allInfoDevice = {};

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    deviceInfo.deviceInfo.then((value) {
      allInfoDevice = value.data;
    });

    _sharedGeo();
    //   if (Platform.isIOS) { // import 'dart:io'
    //   //var iosDeviceInfo = await
    //   deviceInfo.iosInfo.then((value) {
    //     print(value);
    //   });
    //   //return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    // } else if(Platform.isAndroid) {
    //   //var androidDeviceInfo = await
    //   deviceInfo.androidInfo.then((value) {
    //     print(value);
    //   });
    //   //return androidDeviceInfo.androidId; // unique ID on Android
    // }

    // _requestGps().then((value) {
    //   // if (value == Error) {
    //   //   emit(ErrorState(error: 'error'));
    //   //   return;
    //   // } else if (!value) {
    //   //   emit(OffSharedPositionState());
    //   //   return;
    //   // }

    //   emit(PositionChanged(position: value));
    //   _store.addMarker(value);
    //   supabase.from('geoPoints').insert({
    //       'lat': value.latitude,
    //       'lng': value.longitude,
    //       'city': 'Moscow',
    //       'devid': '123'
    //     });

    // });

    _store.getMarkers().listen((event) {
      List<Map> listMarkers = [];

      event.forEach((elemnt) {
        if (elemnt['devid'] != allInfoDevice['host']) {
          listMarkers
              .add({'latitude': elemnt['lat'], 'longitude': elemnt['lng']});
        }
      });

      // event.forEach((element) {
      //      var temp = element.data();

      //      listMarkers.add({
      //        'latitude': temp['position']['latitude'],
      //        'longitude': temp['position']['longitude']
      //      )};

      emit(FetchChangeMarkers(listMarkers: listMarkers));
    });

    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 50,
    );
    StreamSubscription<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? position) async {
      if (position != null && isShareMyPosition) {
        emit(PositionChanged(position: position));
        _store.addUpdateMarker(position, 'moscow', allInfoDevice['host']);
      }
    });

    // on<MapEvent>((event, emit) {

    //   // TODO: implement event handler
    // });

    on<OffSharedPositionEvent>((event, emit) {
      _sharedGeo(false);
      _store.removeMarker(allInfoDevice['host']);
      isShareMyPosition = false;

      positionStream.pause();
      //emit(OffSharedPositionState());
    });

    on<OnSharedPositionEvent>((event, emit) {
      _sharedGeo(true);
      isShareMyPosition = true;
      _requestGps().then((value) {
        if (value == Error) {
          emit(ErrorState(error: 'error'));
          return;
        }

        emit(PositionChanged(position: value));
        _store.addUpdateMarker(value, 'moscow', allInfoDevice['host']);
      });
      positionStream.resume();
      //emit(OnSharedPositionState());
    });
  }

  Future _requestGps() async {
    if (!isShareMyPosition) {
      return false;
    }

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
    return await Geolocator.getCurrentPosition();
  }

  _sharedGeo([on]) async {
    final SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    var res = await _sharedPreferences.getBool('isShareMyPosition');

    if (on != null) {
      on ? emit(OnSharedPositionState()) : emit(OffSharedPositionState());
      _sharedPreferences.setBool('isShareMyPosition', on);
    } else if (res != null) {
      isShareMyPosition = res;
      res ? emit(OnSharedPositionState()) : emit(OffSharedPositionState());
    }
  }
}
