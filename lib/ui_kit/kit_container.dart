import 'package:studio/ui_kit/layout/layout.dart';
import 'package:studio/ui_kit/widgets/app/app.dart';
import 'package:studio/ui_kit/widgets/button/button.dart';
import 'package:studio/ui_kit/widgets/dialog/dialog.dart';
import 'package:studio/ui_kit/widgets/divider/divider.dart';
import 'package:studio/ui_kit/widgets/icon.dart';
import 'package:studio/ui_kit/widgets/indicator/indicator.dart';
import 'package:studio/ui_kit/widgets/list/list.dart';
import 'package:studio/ui_kit/widgets/scaffold/scaffold.dart';
import 'package:studio/ui_kit/widgets/switcher/switcher.dart';
import 'package:studio/ui_kit/widgets/text/text.dart';

class KitContainer {
  final AppContainer app;
  final ButtonContainer button;
  final DialogContainer dialog;
  final DividerFactory divider;
  final IconContainer icon;
  final IndicatorContainer indicator;
  final ListContainer list;
  final ScaffoldFactory scaffold;
  final SwitcherFactory switcher;
  final TextContainer text;
  final LayoutContainer layout;

  const KitContainer({
    required this.app,
    required this.button,
    required this.dialog,
    required this.divider,
    required this.icon,
    required this.indicator,
    required this.list,
    required this.scaffold,
    required this.switcher,
    required this.text,
    required this.layout,
  });
}
