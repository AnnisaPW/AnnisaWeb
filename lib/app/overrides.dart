part of '_index.dart';

class Overrides {
  Overrides._();

  static List<Override> get emptyList => [];
  static List<Override> get list => [
        pvConnectxRepo.overrideWithValue(ConnectxRepoFake()),
        pvSettingsRepo.overrideWithValue(SettingsRepoFake()),
        pvAuthFbRepo.overrideWithValue(AuthFbRepoFake()),
      ];
}
