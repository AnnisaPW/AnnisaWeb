// ignore_for_file: annotate_overrides

part of '_index.dart';

class ConfigStage implements IConfig {
  // ICountersProvider get fakeProvider => CountersProviderStage();

  String get storageName => 'box_fe_master_stage';

  String get apiHost => 'stage.example.com';
  bool get reportErrors => true;
  bool get trackEvents => false;
  bool get useHttps => true;
}
