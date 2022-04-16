part of '_index.dart';

class ConnectifityNotification extends ConsumerWidget {
  const ConnectifityNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _pvConnectxSv = ref.watch(pvConnectxSv);

    // if (GetPlatform.isAndroid || GetPlatform.isIOS) {
    //   return const SizedBox.shrink();
    // }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: _pvConnectxSv.isShowNotification ? 20 : 0,
      color: _pvConnectxSv.isOnline ? Colors.green[600] : Colors.grey[900],
      child: SizedBox(
        height: 20,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                  child: Center(
                    child: Text(
                      _pvConnectxSv.isOnline ? 'Back online' : 'No connection',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
