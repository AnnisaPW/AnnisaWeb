part of '_index.dart';

class XfbFirestoreD extends ConsumerWidget {
  const XfbFirestoreD({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbFirestoreCtrl = ref.watch(pvXfbFirestoreCtrl);
    final _pvPruductsSv = ref.watch(pvPruductsSv);

    return Row(
      children: [
        Expanded(
          child: Center(
            child: _pvPruductsSv.productFuture.maybeWhen(
              data: (data) => Text('${data.total}'),
              orElse: (() => const CircularProgressIndicator()),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text('${_pvPruductsSv.productStream?.total}'),
          ),
        ),
      ],
    );
  }
}
