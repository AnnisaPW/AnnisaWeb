part of '_index.dart';

class XfbAuthView extends ConsumerWidget {
  const XfbAuthView({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbAuthCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbAuthCtrl = ref.watch(pvXfbAuthCtrl);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: XfbAuthAppbar(),
      ),
      floatingActionButton: const XfbAuthFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            XfbAuthC(),
            SizedBoxH(10),
            XfbAuthD(),
            SizedBoxH(10),
            XfbAuthE(),
          ],
        ),
      ),
    );
  }
}
