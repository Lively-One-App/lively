//import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


import '../model/firestore/city_data.dart';
import 'online_store_impl.dart';



class SupabaseHelper implements OnlineStoreImpl {
  final SupabaseClient supabase = Supabase.instance.client;
  static const String _locationsRoom = 'Moscow';
  final SharedPreferences _prefs;
  late final RealtimeChannel room;
  SupabaseHelper(
    this._prefs,
  );
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
    final Stream request = await supabase.from('runString').stream(
      primaryKey: ['id'],
    ).eq("city", moscowId);


    yield* request;
  }

  @override
  void setGeoPointController(Sink<Map<String, dynamic>> controller) async {
    try {
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
      String? uid = _prefs.getString('device_id');
      if (uid == null) {
        uid = await getDeviceIdentifier();
        _prefs.setString('device_id', uid);
      }
      await supabase.functions.invoke('processLike', body: {
        'cityId': cityId,
        'uid': uid,
      });
    } on FunctionException {
      rethrow;
    }
  }

  @override
  Future<void> addUpdateMarker(final Position position) async {
    try {
      final userStatus = {'geopoint': position};
      await room.track(userStatus);
    } catch (e) {
      rethrow;
    }
  }

  Future<String> getDeviceIdentifier() async {
    String deviceIdentifier = "unknown";
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceIdentifier = androidInfo.id;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceIdentifier = iosInfo.identifierForVendor!;
    } else if (kIsWeb) {
      // The web doesnt have a device UID, so use a combination fingerprint as an
      // example
      WebBrowserInfo webInfo = await deviceInfo.webBrowserInfo;
      deviceIdentifier = (webInfo.vendor ?? "unknown") +
          (webInfo.userAgent ?? "userAgent") +
          webInfo.hardwareConcurrency.toString();
    } else if (Platform.isLinux) {
      LinuxDeviceInfo linuxInfo = await deviceInfo.linuxInfo;
      deviceIdentifier = linuxInfo.machineId ?? "unknown";
    }

    return deviceIdentifier;
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
