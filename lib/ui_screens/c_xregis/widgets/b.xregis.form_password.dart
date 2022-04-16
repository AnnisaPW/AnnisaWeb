part of '_index.dart';

class XregisFormPassword extends ConsumerWidget {
  const XregisFormPassword({Key? key}) : super(key: key);

  _scanVldPwd(WidgetRef ref, String? val) => ref.read(ctXregis.notifier).scanVldPwd(val);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXregis = ref.watch(ctXregis);

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: TextFormField(
        controller: _ctXregis.tecPassword,
        onEditingComplete: () => _ctXregis.focusScopeNode.nextFocus(),
        validator: (val) => _scanVldPwd(ref, val),
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Get.theme.colorScheme.secondary,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: const InputDecoration(
          labelText: 'Password',
          hintText: 'type your password',
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
