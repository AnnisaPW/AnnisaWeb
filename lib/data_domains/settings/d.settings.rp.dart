part of '_index.dart';

class SettingsRepo {
  bool readIsDark() => Str.read('isDarkMode') ?? false;

  bool readIsLoggedIn() => Str.read('isLoggedIn') ?? false;

  void writeIsDark(bool value) => Str.write('isDarkMode', value);

  void writeIsLoggedIn(bool value) => Str.write('isLoggedIn', value);
}
