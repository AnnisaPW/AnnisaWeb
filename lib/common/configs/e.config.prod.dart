// ignore_for_file: annotate_overrides

part of '_index.dart';

class ConfigProd implements IConfig {
  // ICountersProvider get fakeProvider => CountersProviderProd();

  String get storageName => 'box_fe_master_prod';

  String get apiHost => 'example.com';
  bool get reportErrors => true;
  bool get trackEvents => true;
  bool get useHttps => true;
}
