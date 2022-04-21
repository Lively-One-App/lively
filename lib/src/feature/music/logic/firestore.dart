import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/firestore/city_data.dart';
import 'online_store_impl.dart';

class Firestore implements OnlineStoreImpl {
  final _store = FirebaseFirestore.instance;

  Stream<CityData> getData() async* {
    final request = await _store
        .collection('cities')
        .doc('4fXw4xLwYsS2JaBnoSgL')
        .snapshots();
    yield* request
        .map((event) => CityData.fromJson(event.data() ?? {'likes': 0}));
  }
}
