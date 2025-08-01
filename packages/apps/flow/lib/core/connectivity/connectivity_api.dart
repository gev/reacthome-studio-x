import 'package:flow/core/connectivity/connectivity_state.dart';

abstract interface class ConnectivityApi {
  ConnectivityState get state;
  void makeConnected(ConnectivityState state);
  void makeDisconnected();
}
