part of '_index.dart';

class XregisFormRetype extends ConsumerWidget {
  const XregisFormRetype({Key? key}) : super(key: key);

  _scanVldPwdRetype(WidgetRef ref, String? val) => ref.read(ctXregis.notifier).scanVldPwdRetype(val);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXregis = ref.watch(ctXregis);

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: TextFormField(
        controller: _ctXregis.tecPasswordRetype,
        onEditingComplete: () => _ctXregis.focusScopeNode.unfocus(),
        validator: (val) => _scanVldPwdRetype(ref, val),
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Get.theme.colorScheme.secondary,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: const InputDecoration(
          labelText: 'Retype Password',
          hintText: 'type your password again',
          isDense: true,
          alignLabelWithHint: true,
          labelStyle: TextStyle(),
          hintStyle: TextStyle(),
          // border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
