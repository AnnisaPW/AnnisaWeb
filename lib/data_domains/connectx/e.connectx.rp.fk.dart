part of '_index.dart';

class ConnectxRepoFake implements ConnectxRepo {
  @override
  Future<ConnectivityResult> getResult() {
    return Future.value(ConnectivityResult.none);
  }
}
