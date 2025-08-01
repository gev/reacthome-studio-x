import 'package:flow/infrastructure/multicast/multicast_source_factory.dart';
import 'package:flow/make/config.dart';
import 'package:flow/make/controllers/discovery_controller_factory.dart';
import 'package:flow/make/core/connectivity_factory.dart';
import 'package:flow/make/core/discovery_factory.dart';
import 'package:flow/make/core/home_factory.dart';
import 'package:flow/services/discovery/discovery_home_update_service.dart';
import 'package:flow/services/discovery/discovery_multicast_service.dart';
import 'package:flow/services/discovery/discovery_timeout_service.dart';

class DiscoveryServiceFactory {
  DiscoveryServiceFactory._();

  static Future<DiscoveryHomeUpdateService>
  makeDiscoveryHomeUpdateService() async => DiscoveryHomeUpdateService(
    eventSource: DiscoveryFactory.homeEventBus.stream,
    myHomeApi: await HomeFactory.makeHomeApi(),
    discoveredHomeApi: DiscoveryFactory.makeHomeApi(),
  );

  static DiscoveryMulticastService makeDiscoveryMulticastService() =>
      DiscoveryMulticastService(
        eventSource: DiscoveryFactory.discoveryEventBus.stream,
        discoveryApi: DiscoveryFactory.makeDiscoveryApi(),
        connectivityApi: ConnectivityFactory.makeConnectivityApi(),
        factory: MulticastSourceFactory(
          group: Config.discovery.listen.group,
          port: Config.discovery.listen.port,
          controller: DiscoveryControllerFactory.make(),
        ),
      );

  static DiscoveryTimeoutService makeDiscoveryTimeoutService() =>
      DiscoveryTimeoutService(
        eventSource: DiscoveryFactory.homeEventBus.stream,
        homeApi: DiscoveryFactory.makeHomeApi(),
        timeout: Config.discovery.renewTimeout,
      );

  static Future<void> make() async {
    DiscoveryServiceFactory.makeDiscoveryMulticastService();
    DiscoveryServiceFactory.makeDiscoveryTimeoutService();
    await DiscoveryServiceFactory.makeDiscoveryHomeUpdateService();
  }
}
