part of '_index.dart';

class ConnectxRepo {
  Future<ConnectivityResult> getResult() {
    return Connection.connx.checkConnectivity();
  }
}
