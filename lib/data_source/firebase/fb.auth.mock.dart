part of '_index.dart';

class FbAuthMock {
  FbAuthMock._();

  static final instance = MockFirebaseAuth(
    mockUser: MockUser(
      displayName: 'testDisplayName',
      email: 'test@email.com',
    ),
  );

  static Future<void> signInWithEmailAndPassword(String email, String password) async {
    await instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  static Future<void> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await instance.signInWithCredential(credential);
  }

  static Future<void> signOut() async {
    await instance.signOut();
  }
}
