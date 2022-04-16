part of '_index.dart';

class XregisFormEmail extends ConsumerWidget {
  const XregisFormEmail({Key? key}) : super(key: key);

  _scanVldEmail(WidgetRef ref, String? val) => ref.read(ctXregis.notifier).scanVldEmail(val);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXregis = ref.watch(ctXregis);

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: TextFormField(
        controller: _ctXregis.tecEmail,
        onEditingComplete: () => _ctXregis.focusScopeNode.nextFocus(),
        validator: (val) => _scanVldEmail(ref, val),
        keyboardType: TextInputType.emailAddress,
        cursorColor: Get.theme.colorScheme.secondary,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'type your email',
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
