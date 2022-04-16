part of '_index.dart';

class SettingsRepoFake implements SettingsRepo {
  @override
  bool readIsDark() => false;

  @override
  bool readIsLoggedIn() => false;

  @override
  void writeIsDark(bool value) {}

  @override
  void writeIsLoggedIn(bool value) {}
}
