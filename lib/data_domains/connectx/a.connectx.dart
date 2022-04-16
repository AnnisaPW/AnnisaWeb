part of '_index.dart';

class Connectx {
  final bool isOnline;
  final bool isShowNotification;
  Connectx({
    this.isOnline = false,
    this.isShowNotification = false,
  });

  Connectx copyWith({
    StreamSubscription<ConnectivityResult>? connxSubs,
    bool? isOnline,
    bool? isShowNotification,
  }) {
    return Connectx(
      isOnline: isOnline ?? this.isOnline,
      isShowNotification: isShowNotification ?? this.isShowNotification,
    );
  }

  @override
  String toString() => 'Connectx(isOnline: $isOnline, isShowNotification: $isShowNotification)';
}
