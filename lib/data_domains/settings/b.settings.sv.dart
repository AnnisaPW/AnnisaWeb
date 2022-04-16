part of '_index.dart';

class SettingsService extends StateNotifier<Settings> {
  Ref ref;
  SettingsService(this.ref) : super(Settings()) {
    initTheme();
  }

  initTheme() {
    if (!GetPlatform.isWeb) {
      state = state.copyWith(
        isDark: ref.read(pvSettingsRepo).readIsDark(),
        isLoggedIn: ref.read(pvSettingsRepo).readIsLoggedIn(),
      );
    }
  }

  switchTheme() {
    state = state.copyWith(isDark: !state.isDark);
    if (!GetPlatform.isWeb) {
      ref.read(pvSettingsRepo).writeIsDark(state.isDark);
    }
  }
}
