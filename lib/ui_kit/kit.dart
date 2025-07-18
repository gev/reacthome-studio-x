import 'package:studio/ui_kit/kit_cupertino.dart';
import 'package:studio/ui_kit/kit_material.dart';
import 'package:studio/util/platform.dart';

final _kit = selectPlatform(cupertino: cupertino, material: material);

final app = _kit.app;
final button = _kit.button;
final dialog = _kit.dialog;
final divider = _kit.divider;
final icon = _kit.icon;
final indicator = _kit.indicator;
final list = _kit.list;
final scaffold = _kit.scaffold;
final switcher = _kit.switcher;
final text = _kit.text;
final layout = _kit.layout;
