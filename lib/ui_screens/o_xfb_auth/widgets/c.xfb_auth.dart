part of '_index.dart';

class XfbAuthC extends ConsumerWidget {
  const XfbAuthC({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbAuthCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbAuthCtrl = ref.watch(pvXfbAuthCtrl);
    final _pvAuthFbSv = ref.watch(pvAuthFbSv);

    return Container(
      child: _pvAuthFbSv.user == null
          ? const Text('you are not logged in yet')
          : Column(
              children: [
                const Text('you are logged in'),
                const SizedBoxH(10),
                Text('${_pvAuthFbSv.user?.email}'),
                const SizedBoxH(5),
                _pvAuthFbSv.user!.photoURL == null
                    ? const Text('no image')
                    : SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            '${_pvAuthFbSv.user!.photoURL}',
                          ),
                        ),
                      ),
              ],
            ),
    );
  }
}
