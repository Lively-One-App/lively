//import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

import 'package:geolocator/geolocator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/firestore/city_data.dart';
import 'online_store_impl.dart';

class SupabaseHelper implements OnlineStoreImpl {
  final SupabaseClient supabase = Supabase.instance.client;
  static const String _locationsRoom = 'Moscow';
  late final RealtimeChannel room;
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

  Stream getRunString() async* {
    String moscowId = '2e683111-964b-40da-b1bd-b232de6004af';
    final Stream request =
        await supabase.from('runString').stream(
      primaryKey: ['id'],
    ).eq("city", moscowId);

    yield* request;
  }

  @override
  void setGeoPointController(Sink<Map<String, dynamic>> controller) async {
    try {
      if (supabase.auth.currentUser == null) {
        await signInAnonymously();
      }
      room = Supabase.instance.client.channel(
        _locationsRoom,
        opts: RealtimeChannelConfig(key: supabase.auth.currentUser!.id),
      );
      room.onPresenceSync((_) {
        final userData = room.presenceState();
        controller.add({'type': 'sync', 'data': userData});
      }).subscribe();
    } catch (e) {
      rethrow;
    }
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
  @override
  Future<void> addUpdateMarker(final Position position) async {
    try {
      final userStatus = {
        'geopoint': position,
      };
      await room.track(userStatus);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInAnonymously() async {
    try {
      const String chars =
          'abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      String email = '';
      for (var i = 0; i < 10; i++) {
        email += chars[Random().nextInt(chars.length)];
      }
      email = '$email@gmail.com';
      await supabase.auth.signUp(password: '12345678', email: email);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> proccessLikes() async {
    try {
      await supabase.functions.invoke('resetLikeCounter');
    } catch (e) {
      rethrow;
    }
  }

  Future<void> removeMarker() async {
    try {
      await room.untrack();
    } catch (e) {
      rethrow;
    }
  }
}
