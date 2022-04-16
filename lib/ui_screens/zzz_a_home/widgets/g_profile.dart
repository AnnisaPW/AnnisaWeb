part of '_index.dart';

class ZHomeProfile extends ConsumerWidget {
  const ZHomeProfile({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return Row(
      children: [
        const ZHomeImage(),
        const SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            height: 150,
            child: Column(
              children: const [
                ZHomeGreet(),
                ZHomeName(),
                ZHomeStatus(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
