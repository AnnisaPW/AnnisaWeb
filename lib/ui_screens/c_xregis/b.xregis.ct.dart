part of '_index.dart';

class XregisCtr extends StateNotifier<XregisState> {
  Ref ref;

  XregisCtr(this.ref) : super(XregisState()) {
    _resetAllTec();
  }

  _resetAllTec() {
    state.tecEmail.clear();
    state.tecPassword.clear();
    state.tecPasswordRetype.clear();
  }

  scanVldEmail(String? val) {
    return Vld.scan([
      Vld.isNotEmpty(val),
      Vld.email(val),
    ]);
  }

  scanVldPwd(String? val) {
    return Vld.scan([
      Vld.isNotEmpty(val),
      Vld.spaceNotAllowed(val),
      Vld.pwdContain(val),
      Vld.minChars(val, 3),
      Vld.maxChars(val, 6),
    ]);
  }

  scanVldPwdRetype(String? val) {
    return Vld.scan([
      Vld.isNotEmpty(val),
      Vld.mustEqual(val, state.tecPassword.text),
    ]);
  }

  register() async {
    if (state.formKey.currentState!.validate()) {
      Fun.showBarrierLoading();
      //todo: connect to server and do registration
      await Future.delayed(const Duration(seconds: 2));
      Get.offAllNamed(Routes.xhome);
    }
  }
}
