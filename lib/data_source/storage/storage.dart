part of '_index.dart';

class Str {
  Str._();
  static final box = GetStorage(Config.values.storageName);

  static dynamic read(String key) {
    return box.read(key);
  }

  static Future<void> write(String key, dynamic value) async {
    await box.write(key, value);
  }
}
