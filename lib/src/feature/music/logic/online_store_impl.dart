import '../model/firestore/user_data.dart';

abstract class OnlineStoreImpl {
  void postDataUsers(UserData data);
  Future<UserData?> getDataUsers();
}
