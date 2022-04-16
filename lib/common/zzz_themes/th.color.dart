part of '_index.dart';

class ThColor {
  ThColor._();

  static _CustomColors get light {
    return _CustomColors(
      brand: Colors.pink,
      primary: Colors.blue,
      secondary: Colors.orange,
      statusBar: Colors.black.withOpacity(0.2),
      appBarBackground: Colors.grey.shade50,
      appBarForeground: Colors.grey.shade900,
      barrier: Colors.black.withOpacity(0.3),
    );
  }

  static _CustomColors get dark {
    return _CustomColors(
      brand: Colors.pink,
      primary: Colors.blue,
      secondary: Colors.orange,
      statusBar: Colors.black.withOpacity(0.4),
      appBarBackground: Colors.grey.shade900,
      appBarForeground: Colors.white,
      barrier: Colors.black.withOpacity(0.7),
    );
  }
}

class _CustomColors {
  final MaterialColor brand;
  final Color primary;
  final Color secondary;
  final Color statusBar;
  final Color appBarBackground;
  final Color appBarForeground;
  final Color barrier;
  _CustomColors({
    required this.brand,
    required this.primary,
    required this.secondary,
    required this.statusBar,
    required this.appBarBackground,
    required this.appBarForeground,
    required this.barrier,
  });
}

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    // 0% comes in here, this will be color picked if no shade is selected
    // when defining a Color property which doesn’t require a swatch.
    0xffe55f48,
    <int, Color>{
      50: Color(0xffce5641), //10%
      100: Color(0xffb74c3a), //20%
      200: Color(0xffa04332), //30%
      300: Color(0xff89392b), //40%
      400: Color(0xff733024), //50%
      500: Color(0xff5c261d), //60%
      600: Color(0xff451c16), //70%
      700: Color(0xff2e130e), //80%
      800: Color(0xff170907), //90%
      900: Color(0xff000000), //100%
    },
  );
}
