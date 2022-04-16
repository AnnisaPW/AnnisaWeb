part of '_index.dart';

class XdummyMultiLanguage extends ConsumerWidget {
  const XdummyMultiLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBoxH(5),
        Text(
          'str'.tr,
          textScaleFactor: 1.2,
        ),
        Text(
          'strWithParams'.trParams({
            'name': 'Jhon',
            'email': 'jhon@example.com',
          }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('EN'),
              onPressed: () => Get.updateLocale(const Locale('en', 'US')),
            ),
            const SizedBoxW(10),
            ElevatedButton(
              child: const Text('JA'),
              onPressed: () => Get.updateLocale(const Locale('ja', 'JP')),
            ),
            const SizedBoxW(10),
            ElevatedButton(
              child: const Text('ID'),
              onPressed: () => Get.updateLocale(const Locale('id', 'ID')),
            ),
          ],
        ),
        ElevatedButton(
          child: const Text('SP (callback to EN)'),
          onPressed: () => Get.updateLocale(const Locale('sp', 'BR')),
        ),
      ],
    );
  }
}
