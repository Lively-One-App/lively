import '../model/firestore/city_data.dart';

abstract class OnlineStoreImpl {
  Stream<CityData> getData(final String nameCity);
  void setData(final String nameCity);
}
