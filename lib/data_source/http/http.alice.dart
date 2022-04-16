part of '_index.dart';

class HttpAlice {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  static final _alice = Alice(
    showNotification: true,
    navigatorKey: _navigatorKey,
    showShareButton: false,
    // darkTheme: true,
  );

  static Alice get alice => _alice;
}
