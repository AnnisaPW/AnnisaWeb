part of '_index.dart';

class ConnectxService extends StateNotifier<Connectx> {
  Ref ref;
  ConnectxService(this.ref) : super(Connectx()) {
    if (!GetPlatform.isAndroid || !GetPlatform.isIOS) {
      listen();
      check(); //manual check on init

    }
  }

  late StreamSubscription<ConnectivityResult> subsConnx;

  listen() {
    subsConnx = Connection.connx.onConnectivityChanged.listen((_) => check());
  }

  close() {
    subsConnx.cancel();
  }

  check() async {
    try {
      final result = await ref.read(pvConnectxRepo).getResult();
      updateIsOnline(result);
    } on PlatformException catch (e) {
      loggerx(ConnectxService).e('Couldn\'t check connectivity status', e);
      return;
    }
  }

  updateIsOnline(ConnectivityResult result) {
    state = state.copyWith(isOnline: !(result == ConnectivityResult.none));
    loggerx(ConnectxService).wtf('$result');
    updateNotification();
  }

  updateNotification() async {
    await Future.delayed(Duration(milliseconds: state.isOnline ? 2000 : 100));
    state = state.copyWith(isShowNotification: !state.isOnline);
    loggerx(ConnectxService).wtf('isOnline = ${state.isOnline}');
    showNotification();
  }

  showNotification() async {
    if (state.isShowNotification) {
      await Future.delayed(const Duration(milliseconds: 100));
      Fun.showSnackBar(
        title: 'Connection Problem',
        message: 'Please check your internet connection.',
        seconds: 5,
      );
    }
  }
}
