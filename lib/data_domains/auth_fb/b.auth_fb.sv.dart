part of '_index.dart';

class AuthFbService extends StateNotifier<AuthFb> {
  Ref ref;
  AuthFbService(this.ref) : super(AuthFb()) {
    listen();
  }

  late StreamSubscription<User?> subsAuth;

  listen() {
    subsAuth = ref.read(pvAuthFbRepo).getInstance().userChanges().listen((event) {
      state = state.copyWith(user: event);
      loggerx(AuthFbService).wtf('user => ${state.user}');
    });
  }

  close() {
    subsAuth.cancel();
  }

  signInWithEmailAndPassword(String email, String password) {
    ref.read(pvAuthFbRepo).signInWithEmailAndPassword(email, password);
  }

  signInWithGoogle() {
    ref.read(pvAuthFbRepo).signInWithGoogle();
  }

  signOut() {
    ref.read(pvAuthFbRepo).signOut();
  }
}
