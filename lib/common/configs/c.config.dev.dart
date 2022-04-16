// ignore_for_file: annotate_overrides

part of '_index.dart';

class ConfigDev implements IConfig {
  // ICountersProvider get fakeProvider => CountersProviderDev();

  String get storageName => 'box_fe_master_dev';

  String get apiHost => 'https://api.smart-akmil.pinteraktif.com';
  bool get reportErrors => false;
  bool get trackEvents => false;
  bool get useHttps => false;
}
