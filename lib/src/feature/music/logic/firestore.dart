//import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/firestore/city_data.dart';
import 'online_store_impl.dart';

class SupabaseHelper implements OnlineStoreImpl {
  final supabase = Supabase.instance.client;

  get yield => null;

  @override
  Stream<CityData> getData(final String cityId) async* {
    final request = supabase
        .from('city')
        .stream(primaryKey: ['id'])
        .eq('id', cityId)
        .asBroadcastStream();

    yield* request.map((event) {
      int likes = event[0]['likes_counter'];
      return CityData(likes: likes);
    });
  }

  Stream<List<Map>> getMarkers() async* {
    //final request = await _store.collection('livelymarkers').snapshots();

    // yield* request.map((event) {
    //   List<Map> listMarkers = [];

    //   //request.listen((event) {
    //     //listMarkers.clear();

    //     event.docs.forEach((element) {
    //       var temp = element.data();

    //       listMarkers.add({
    //         'latitude': temp['position']['latitude'],
    //         'longitude': temp['position']['longitude']
    //       });
    //     });
    //   //});

    //   return listMarkers;
    // });
  }

  @override
  Future<void> setData(final String cityId) async {
    try {
      if (supabase.auth.currentUser == null) {
        await signInAnonymously();
      }
      await supabase.functions.invoke('processLike', body: {
        'cityId': cityId,
      });
    } catch (e) {
      rethrow;
    }
  }

  void addMarker(final Position position) async {
    // await _store.collection('livelymarkers').add({
    //   'position': {
    //     'latitude': position.latitude,
    //     'longitude': position.longitude
    //   }
    // });
  }

  Future<void> signInAnonymously() async {
    const String chars =
        'abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String email = '';
    for (var i = 0; i < 10; i++) {
      email += chars[Random().nextInt(chars.length)];
    }
    email = '$email@gmail.com';
    await supabase.auth.signUp(password: '12345678', email: email);
  }

  @override
  Future<void> proccessLikes() async {
    try {
      await supabase.functions.invoke('resetLikeCounter');
    } catch (e) {
      rethrow;
    }
  }
}
