part of '_index.dart';

class XloginView extends ConsumerWidget {
  const XloginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXlogin = ref.watch(ctXlogin);

    return WillPopScope(
      onWillPop: () => Fun.onWillPop(),
      child: Scaffold(
        body: KeyboardDismisser(
          child: Form(
            key: _ctXlogin.formKey,
            child: FocusScope(
              node: _ctXlogin.focusScopeNode,
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
                              XloginFormEmail(),
                              XloginFormPassword(),
                              SizedBoxH(20),
                              XloginBtnSubmit(),
                              SizedBoxH(35),
                              Divider(height: 1),
                              SizedBoxH(35),
                              XloginBtnGoogle(),
                              SizedBoxH(35),
                              XloginBtnToRegis(),
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
