part of '_index.dart';

final pvConnectxSv = StateNotifierProvider<ConnectxService, Connectx>((ref) => ConnectxService(ref));

final pvConnectxRepo = Provider<ConnectxRepo>((ref) {
  return ConnectxRepo();
});
