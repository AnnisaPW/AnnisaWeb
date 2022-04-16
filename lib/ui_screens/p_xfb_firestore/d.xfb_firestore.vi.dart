part of '_index.dart';

class XfbFirestoreView extends ConsumerWidget {
  const XfbFirestoreView({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbFirestoreCtrl = ref.watch(pvXfbFirestoreCtrl);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: XfbFirestoreAppbar(),
      ),
      floatingActionButton: const XfbFirestoreFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            XfbFirestoreC(),
            SizedBox(
              height: 60,
              child: XfbFirestoreD(),
            ),
            XfbFirestoreE(),
          ],
        ),
      ),
    );
  }
}
