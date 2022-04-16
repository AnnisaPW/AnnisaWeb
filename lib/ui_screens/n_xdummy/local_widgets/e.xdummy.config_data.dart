part of '_index.dart';

class XdummyConfigData extends ConsumerWidget {
  const XdummyConfigData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      Config.values.apiHost,
      textScaleFactor: 1.5,
    );
  }
}
