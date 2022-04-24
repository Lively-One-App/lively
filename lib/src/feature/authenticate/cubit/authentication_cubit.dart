import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../logic/fire_auth.dart';

class AuthenticationCubit extends Cubit<User?> {
  AuthenticationCubit(final FireAuth fireAuth)
      : _fireAuth = fireAuth,
        super(fireAuth.user != null ? fireAuth.user : null) {
    _fireAuth.changeUser().listen((event) async {
      event == null ? await _fireAuth.anonymousAuth() : emit(event);
    });
  }
  final FireAuth _fireAuth;
}
