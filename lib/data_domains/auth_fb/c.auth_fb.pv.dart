part of '_index.dart';

final pvAuthFbSv = StateNotifierProvider<AuthFbService, AuthFb>((ref) => AuthFbService(ref));

final pvAuthFbRepo = Provider<AuthFbRepo>((ref) {
  return AuthFbRepo();
});
