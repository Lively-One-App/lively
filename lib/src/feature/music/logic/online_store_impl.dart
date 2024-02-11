import 'dart:async';

import 'package:geolocator/geolocator.dart';
import '../model/firestore/city_data.dart';

abstract class OnlineStoreImpl {
  
  Stream<CityData> getData(final String nameCity);
  void setGeoPointController(Sink<Map<String, dynamic>> controller);
  Future<void> setData(final String nameCity);
  Future<void> proccessLikes();
  Stream getRunString();
  Future<void> addUpdateMarker(final Position position);
  Future<void> removeMarker();
}
