import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/firestore/city_data.dart';
import 'online_store_impl.dart';

class Firestore implements OnlineStoreImpl {
  final _store = FirebaseFirestore.instance;

  Stream<CityData> getData(final String nameCity) async* {
    final request = await _store.collection('cities').doc(nameCity).snapshots();

    // var a =
    //     await _store.collection('cities').doc(nameCity).update({'likes': 0});
    yield* request.map((event) => CityData.fromJson(event.data()!));
  }

  void setData(final String nameCity) async {
    await _store
        .collection('cities')
        .doc(nameCity)
        .update({'likes': FieldValue.increment(1)});
  }
}
