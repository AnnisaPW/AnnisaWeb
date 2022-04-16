part of '_index.dart';

class XloginCtr extends StateNotifier<XloginState> {
  Ref ref;
  XloginCtr(this.ref) : super(XloginState()) {
    _resetAllTec();
  }

  _resetAllTec() {
    state.tecEmail.clear();
    state.tecPassword.clear();
  }

  toogleObscure() {
    state = state.copyWith(isObscured: !state.isObscured);
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

  signInViaEmail() async {
    if (state.formKey.currentState!.validate()) {
      Fun.showBarrierLoading();
      //todo: connect to server and do signin
      await Future.delayed(const Duration(seconds: 2));
      Get.offAllNamed(Routes.xhome);
    }
  }

  signInViaGoogle() async {
    Fun.showBarrierLoading();
    //todo: connect to server and do signin with google
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(Routes.xhome);
  }
}
