part of '_index.dart';

class XsplashController extends StateNotifier<XsplashState> {
  Ref ref;
  XsplashController(this.ref) : super(XsplashState()) {
    _delayNavigate();
  }

  _delayNavigate() {
    Future.delayed(const Duration(seconds: 3), () {
      // Str.readIsLoggedIn() ? Get.offNamed(Routes.xhome) : Get.offNamed(Routes.xlogin);
      ref.read(pvSettingsSv).isLoggedIn ? Get.offNamed(Routes.xhome) : Get.offNamed(Routes.xlogin);
    });
  }
}
