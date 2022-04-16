part of '_index.dart';

class AuthFbRepo {
  FirebaseAuth getInstance() {
    return FbAuth.instance;
  }

  Future<void> signInWithEmailAndPassword(String email, String password) {
    return FbAuth.signInWithEmailAndPassword(email, password);
  }

  Future<void> signInWithGoogle() {
    return FbAuth.signInWithGoogle();
  }

  Future<void> signOut() {
    return FbAuth.signOut();
  }
}
