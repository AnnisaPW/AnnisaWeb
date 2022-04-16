part of '_index.dart';

class XfbAuthCtrl extends StateNotifier<XfbAuthState> {
  Ref ref;
  XfbAuthCtrl(this.ref) : super(XfbAuthState()) {
    _init();
  }

  _init() {}

  signInWithGoogle(WidgetRef ref) => ref.read(pvAuthFbSv.notifier).signInWithGoogle();
  signOut(WidgetRef ref) => ref.read(pvAuthFbSv.notifier).signOut();
}
