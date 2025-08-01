import 'package:common/emitter.dart';
import 'package:common/repository/box_repository.dart';
import 'package:flow/core/preferences/preferences.dart';
import 'package:flow/core/preferences/preferences_api.dart';
import 'package:flow/core/preferences/preferences_event.dart';

class PreferencesService implements PreferencesApi {
  final Emitter<PreferencesEvent> eventSink;
  final BoxRepository<Preferences> box;

  PreferencesService({required this.eventSink, required this.box});

  @override
  String? get home => box.value.home;

  @override
  bool get isHomeSelected => home != null;

  @override
  void setHome(String home) {
    final preferences = box.value;
    preferences.home = home;
    box.put(preferences);
    eventSink.emit(PreferencesHomeSelectedEvent(home));
  }

  @override
  void removeHome(String home) {
    final preferences = box.value;
    preferences.home = null;
    box.put(preferences);
    eventSink.emit(PreferencesHomeRemovedEvent(home));
  }
}
