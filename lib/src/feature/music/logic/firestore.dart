import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/firestore/user_data.dart';
import 'online_store_impl.dart';

class Firestore implements OnlineStoreImpl {
  final _store = FirebaseFirestore.instance;

  void postDataUsers(UserData data) async {
    await _store.collection('cities').doc('city name').update(data.toJson());
  }

  Future<UserData?> getDataUsers() async {
    final request = await _store.collection('cities').doc('city name').get();
    final data = request.data();
    if (data == null) {
      return null;
    }
    return UserData.fromJson(data);
  }
}
