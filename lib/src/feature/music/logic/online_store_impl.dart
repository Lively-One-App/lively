import 'package:geolocator/geolocator.dart';

import '../model/firestore/city_data.dart';

abstract class OnlineStoreImpl {
  Stream<CityData> getData(final String nameCity);
  Stream getMarkers();
  Future<void> setData(final String nameCity);
  void addMarker(final Position position);
  Future<void> proccessLikes();
}
