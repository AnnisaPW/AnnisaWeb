part of '_index.dart';

class XregisView extends ConsumerWidget {
  const XregisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXregis = ref.watch(ctXregis);

    return WillPopScope(
      onWillPop: () => Fun.onWillPop(),
      child: Scaffold(
        body: KeyboardDismisser(
          child: Form(
            key: _ctXregis.formKey,
            child: FocusScope(
              node: _ctXregis.focusScopeNode,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              XregisFormEmail(),
                              XregisFormPassword(),
                              XregisFormRetype(),
                              SizedBoxH(20),
                              XregisBtnSubmit(),
                              SizedBoxH(35),
                              Divider(height: 1),
                              SizedBoxH(20),
                              XregisBtnToLogin(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
