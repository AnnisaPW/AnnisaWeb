part of '_index.dart';

final pvSettingsSv = StateNotifierProvider<SettingsService, Settings>((ref) => SettingsService(ref));

final pvSettingsRepo = Provider<SettingsRepo>((ref) {
  return SettingsRepo();
});
