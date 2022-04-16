part of '_index.dart';

class XloginFormPassword extends ConsumerWidget {
  const XloginFormPassword({Key? key}) : super(key: key);

  _scanVldPwd(WidgetRef ref, String? val) => ref.read(ctXlogin.notifier).scanVldPwd(val);
  _toogleObscure(WidgetRef ref) => ref.read(ctXlogin.notifier).toogleObscure();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXlogin = ref.watch(ctXlogin);

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: TextFormField(
        obscureText: _ctXlogin.isObscured,
        controller: _ctXlogin.tecPassword,
        onEditingComplete: () => _ctXlogin.focusScopeNode.unfocus(),
        validator: (val) => _scanVldPwd(ref, val),
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Get.theme.colorScheme.secondary,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'type your password',
          isDense: true,
          alignLabelWithHint: true,
          labelStyle: const TextStyle(),
          hintStyle: const TextStyle(),
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: const Icon(Icons.remove_red_eye),
            splashRadius: 22,
            onPressed: () => _toogleObscure(ref),
          ),
          suffixIconConstraints: const BoxConstraints(
            minHeight: 40,
            minWidth: 50,
          ),
        ),
      ),
    );
  }
}
