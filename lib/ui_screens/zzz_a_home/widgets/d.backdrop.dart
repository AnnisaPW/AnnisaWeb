part of '_index.dart';

class ZHomeBackDrop extends ConsumerWidget {
  const ZHomeBackDrop({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.amber,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Opacity(
                opacity: 0.3,
                child: Container(
                  color: Colors.green,
                ),
              ),
              // gradient effect
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
