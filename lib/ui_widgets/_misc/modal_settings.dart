part of '_index.dart';

class ModalSettings extends ConsumerWidget {
  const ModalSettings({Key? key}) : super(key: key);

  _switchTheme(WidgetRef ref) => ref.read(pvSettingsSv.notifier).switchTheme();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: const Text('sign out'),
          leading: const Icon(Icons.power_settings_new, size: 22),
          onTap: () => Get.offAllNamed(Routes.xlogin),
        ),
        ListTile(
          title: const Text('switch theme'),
          leading: const Icon(Icons.brightness_medium, size: 22),
          onTap: () => _switchTheme(ref),
        ),
        ListTile(
          title: const Text('toast (not for desktop)'),
          leading: const Icon(Icons.tag, size: 22),
          onTap: () => Fun.showToast('test toast'),
        ),
        ListTile(
          title: const Text('custom snack bar'),
          leading: const Icon(Icons.tag, size: 22),
          onTap: () => Fun.showSnackBar(
            title: "...",
            message: "Test snack bar",
            seconds: 2,
          ),
        ),
        ListTile(
          title: const Text('dialog for alert'),
          leading: const Icon(Icons.tag, size: 22),
          onTap: () => Fun.showDialog(AlertDialogX(
            title: 'Opss, something wrong',
            message: 'this is just dialog test',
            widgets: [
              CupertinoDialogAction(
                child: const Text("OK"),
                textStyle: TextStyle(
                  color: Get.theme.textTheme.headline6?.color,
                ),
                onPressed: () => Get.back(),
              ),
            ],
          )),
        ),
        ListTile(
          title: const Text('dialog for confirmation'),
          leading: const Icon(Icons.tag, size: 22),
          onTap: () => Fun.showDialog(AlertDialogX(
            title: 'Confirmation',
            message: 'Are you sure want to exit?',
            widgets: [
              CupertinoDialogAction(
                child: const Text("Cancel"),
                isDefaultAction: true,
                textStyle: TextStyle(
                  color: Get.theme.textTheme.headline6?.color,
                ),
                onPressed: () => Get.back(),
              ),
              CupertinoDialogAction(
                child: const Text("OK"),
                textStyle: TextStyle(
                  color: Get.theme.textTheme.headline6?.color,
                ),
                onPressed: () => Get.back(),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
