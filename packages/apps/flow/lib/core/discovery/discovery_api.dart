import 'package:flow/core/discovery/discovery.dart';
import 'package:flow/core/discovery/discovery_state.dart';

abstract interface class DiscoveryApi<S> {
  Discovery getProcess();
  DiscoveryState get state;
  void start();
  void completeStart(S source);
  void stop();
  void completeStop();
}
