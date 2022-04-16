part of '_index.dart';

class XdummyView extends ConsumerWidget {
  const XdummyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: XdummyAppbar(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBoxH(40),
              XdummyFadeText('access config data'),
              XdummyConfigData(),
              SizedBoxH(40),
              XdummyFadeText('localization/translations'),
              XdummyMultiLanguage(),
              SizedBoxH(40),
            ],
          ),
        ),
      ),
    );
  }
}
