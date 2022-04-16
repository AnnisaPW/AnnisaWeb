part of '_index.dart';

final pvAuthJwtSv = StateNotifierProvider<AuthJwtService, AuthJwt>((ref) => AuthJwtService(ref));

final pvAuthJwtRepo = Provider<AuthJwtRepo>((ref) {
  return AuthJwtRepo();
});
