import 'dart:async';

import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

import '../model/firestore/city_data.dart';

abstract class OnlineStoreImpl {
  
  Stream<CityData> getData(final String nameCity);
  Stream getMarkers();
  Stream getRunString();
  void setData(final String nameCity);
  void addUpdateMarker(final Position position, final String city, final String devInfo);
  void removeMarker(final String id);
}
