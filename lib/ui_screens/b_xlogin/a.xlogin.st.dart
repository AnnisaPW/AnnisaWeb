part of '_index.dart';

class XloginState {
  final formKey = GlobalKey<FormState>();
  final focusScopeNode = FocusScopeNode();
  final tecEmail = TextEditingController();
  final tecPassword = TextEditingController();

  final bool isObscured;
  XloginState({
    this.isObscured = false,
  });

  XloginState copyWith({
    bool? isObscured,
  }) {
    return XloginState(
      isObscured: isObscured ?? this.isObscured,
    );
  }
}
