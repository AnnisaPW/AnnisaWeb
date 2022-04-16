part of '_index.dart';

class TemplateAppbar extends ConsumerWidget {
  const TemplateAppbar({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvTemplateCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _pvTemplateCtrl = ref.watch(pvTemplateCtrl);

    return AppBar(
      title: Text(_pvTemplateCtrl.title),
    );
  }
}
