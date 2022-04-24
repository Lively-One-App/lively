import 'package:firebase_auth/firebase_auth.dart';

class FireAuth {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User? get user => _auth.currentUser;

  Stream<User?> changeUser() async* {
    yield* _auth.authStateChanges();
  }

  Future<User?> anonymousAuth() async {
    final userCredential = await _auth.signInAnonymously();
    return userCredential.user;
  }
}
