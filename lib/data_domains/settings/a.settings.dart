part of '_index.dart';

class Settings {
  final bool isDark;
  final bool isLoggedIn;
  Settings({
    this.isDark = true,
    this.isLoggedIn = false,
  });

  Settings copyWith({
    bool? isDark,
    bool? isLoggedIn,
  }) {
    return Settings(
      isDark: isDark ?? this.isDark,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }

  @override
  String toString() => 'Settings(isDark: $isDark, isLogin: $isLoggedIn)';
}
