part of '_index.dart';

class XfbFirestoreE extends ConsumerWidget {
  const XfbFirestoreE({Key? key}) : super(key: key);

  _createItem(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).createItem();
  _readItem(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).readItem();
  _updateItem(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).updateItem();
  _deleteItem(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).deleteItem();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbFirestoreCtrl = ref.watch(pvXfbFirestoreCtrl);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('create'),
          onPressed: () => _createItem(ref),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('read'),
          onPressed: () => _readItem(ref),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('update'),
          onPressed: () => _updateItem(ref),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('delete'),
          onPressed: () => _deleteItem(ref),
        ),
      ],
    );
  }
}
