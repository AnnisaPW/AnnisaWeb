part of '_index.dart';

class XsplashState {
  final String pathImage;
  final String strLoading;
  XsplashState({
    this.pathImage = 'assets/icons/splash.png',
    this.strLoading = 'loading...',
  });

  XsplashState copyWith({
    String? pathImage,
    String? strLoading,
  }) {
    return XsplashState(
      pathImage: pathImage ?? this.pathImage,
      strLoading: strLoading ?? this.strLoading,
    );
  }

  @override
  String toString() => 'XsplashState(pathImage: $pathImage, strLoading: $strLoading)';
}
