part of '_index.dart';

class ThData {
  ThData._();

  static ThemeData get light {
    return ThemeData(
      platform: TargetPlatform.iOS,
      // brightness: Brightness.light,
      // primarySwatch: ThColor.light.brand,
      //* colorScheme will replace primarySwatch
      //* colorScheme have default primary & sencodary color
      colorScheme: const ColorScheme.light(),
      // colorScheme: const ColorScheme.light().copyWith(
      //   primary: ThColor.light.primary,
      //   secondary: ThColor.light.secondary,
      // ),
      cupertinoOverrideTheme: const CupertinoThemeData().copyWith(
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme().copyWith(
        color: ThColor.light.appBarBackground,
        foregroundColor: ThColor.light.appBarForeground,
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarBrightness: Brightness.dark, //for iPhone
          statusBarColor: ThColor.light.statusBar,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme().copyWith(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      platform: TargetPlatform.iOS,
      //* Brightness.dark have default secondary/accent color
      // brightness: Brightness.dark,
      // primarySwatch: ThColor.dark.brand,
      //* colorScheme will replace primarySwatch
      //* colorScheme have default primary & sencodary color
      colorScheme: const ColorScheme.dark(),
      // colorScheme: const ColorScheme.dark().copyWith(
      //   primary: ThColor.dark.primary,
      //   secondary: ThColor.dark.secondary,
      // ),
      cupertinoOverrideTheme: const CupertinoThemeData().copyWith(
        brightness: Brightness.dark,
      ),
      appBarTheme: const AppBarTheme().copyWith(
        color: ThColor.dark.appBarBackground,
        foregroundColor: ThColor.dark.appBarForeground,
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
          statusBarBrightness: Brightness.dark, //for iPhone
          statusBarColor: ThColor.dark.statusBar,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme().copyWith(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
