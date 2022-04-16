part of '_index.dart';

class ZHomeName extends ConsumerWidget {
  const ZHomeName({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'I am',
                textScaleFactor: 1.5,
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                'Annisa Putri Wahyuni',
                textScaleFactor: 1.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
