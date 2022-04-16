part of '_index.dart';

class XhomeView extends ConsumerWidget {
  const XhomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () => Fun.onWillPop(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: XhomeAppbar(),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  XhomeTile(
                    title: 'Test Logger',
                    subtitle: 'Tap then check console.',
                    fun: () {
                      logger.e('message on level error');
                      logger.v('message on level verbose');
                      logger.w('message on level warning');
                      logger.i('message on level info');
                      logger.d('message on level debug');
                      logger.wtf('message on level wtf');
                      loggerx(XhomeView).v('logger with classname');
                    },
                  ),
                  XhomeTile(
                    title: 'Dummy',
                    subtitle: 'How to implement this project.',
                    fun: () => Get.toNamed(Routes.xdummy),
                  ),
                  XhomeTile(
                    title: 'Firebase Auth (not for windows)',
                    subtitle: 'How auth works on firebase.',
                    fun: () => Get.toNamed(Routes.xfbAuth),
                  ),
                  XhomeTile(
                    title: 'Firebase Firestore (not for windows)',
                    subtitle: 'How CRUD works on firestore.',
                    fun: () => Get.toNamed(Routes.xfbFirestore),
                  ),
                  XhomeTile(
                    title: 'Product',
                    subtitle: 'Firebase in real case (not for windows)',
                    fun: GetPlatform.isWindows ? null : () => Get.toNamed(Routes.xproductList),
                  ),
                  XhomeTile(
                    title: 'Alice',
                    subtitle: 'Show alice inspector from Xhome',
                    fun: () => HttpAlice.alice.showInspector(),
                  ),
                  const XhomeTile(
                    title: 'Forms',
                    subtitle: '(cooming soon)',
                    fun: null,
                  ),
                ],
              ),
            ),
            if (GetPlatform.isAndroid || GetPlatform.isIOS) const ConnectifityNotification(),
          ],
        ),
      ),
    );
  }
}
