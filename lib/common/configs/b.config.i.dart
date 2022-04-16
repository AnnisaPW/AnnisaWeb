part of '_index.dart';

abstract class IConfig {
  // ICountersProvider get fakeProvider;

  String get storageName;

  String get apiHost;
  bool get useHttps;
  bool get trackEvents;
  bool get reportErrors;
}
