import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/firestore/city_data.dart';

abstract class OnlineStoreImpl {
  SharedPreferences get prefs;
  Stream<CityData> getData(final String nameCity);
  Stream getMarkers();
  void setGeoPointController(Sink<Map<String, dynamic>> controller);
  Future<void> setData(final String nameCity);
  Future<void> proccessLikes();
  Stream getRunString();
  Future<void> addUpdateMarker(final Position position);
  Future<void> removeMarker();
}
