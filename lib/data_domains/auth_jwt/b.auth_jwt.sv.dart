part of '_index.dart';

class AuthJwtService extends StateNotifier<AuthJwt> {
  Ref ref;
  AuthJwtService(this.ref) : super(AuthJwt()) {
    _init();
  }

  _init() {}
}
