part of '_index.dart';

class TemplateView extends ConsumerWidget {
  const TemplateView({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvTemplateCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvTemplateCtrl = ref.watch(pvTemplateCtrl);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TemplateAppbar(),
      ),
      floatingActionButton: const TemplateFab(),
      body: Column(
        children: const [
          TemplateC(),
          TemplateD(),
          TemplateE(),
        ],
      ),
    );
  }
}
