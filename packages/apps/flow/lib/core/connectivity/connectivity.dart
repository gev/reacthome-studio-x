import 'package:flow/core/connectivity/connectivity_event.dart';
import 'package:flow/core/connectivity/connectivity_state.dart';

abstract interface class Connectivity {
  ConnectivityState get state;
  ConnectivityEvent makeConnected(ConnectivityState state);
  ConnectivityEvent makeDisconnected();
}
