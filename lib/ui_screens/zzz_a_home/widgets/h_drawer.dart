part of '_index.dart';

class ZHomeDrawer extends ConsumerWidget {
  const ZHomeDrawer({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const SizedBox(
            width: double.infinity,
            height: 100,
            child: CircleAvatar(
              radius: 20,
            ),
          ),
          const SizedBox(height: 10),
          const ListTile(
            title: Text('ZHome'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text('About'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
          const ListTile(
            title: Text('Journey'),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ExpansionTile(
            title: const Text('Portofolio'),
            children: [
              ListTile(
                title: const Text('Snake Game'),
                onTap: () {
                  Get.toNamed(Routes.homeSnake);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
