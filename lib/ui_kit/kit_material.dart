import 'package:flutter/material.dart';
import 'package:studio/ui_kit/kit_container.dart';
import 'package:studio/ui_kit/layout/layout_material.dart';
import 'package:studio/ui_kit/widgets/app/app.dart';
import 'package:studio/ui_kit/widgets/app/bar/fixed/app_bar_fixed_material.dart';
import 'package:studio/ui_kit/widgets/app/bar/sliver/app_bar_sliver_material.dart';
import 'package:studio/ui_kit/widgets/app/root/app_root_material.dart';
import 'package:studio/ui_kit/widgets/button/button.dart';
import 'package:studio/ui_kit/widgets/button/filled/button_filled_material.dart';
import 'package:studio/ui_kit/widgets/button/icon/filled/button_icon_filled_material.dart';
import 'package:studio/ui_kit/widgets/dialog/action/dialog_action_material.dart';
import 'package:studio/ui_kit/widgets/dialog/alert/dialog_alert_material.dart';
import 'package:studio/ui_kit/widgets/dialog/dialog.dart';
import 'package:studio/ui_kit/widgets/dialog/show/show_dialog_material.dart';
import 'package:studio/ui_kit/widgets/divider/divider_material.dart';
import 'package:studio/ui_kit/widgets/icon.dart';
import 'package:studio/ui_kit/widgets/indicator/activity/indicator_activity_material.dart';
import 'package:studio/ui_kit/widgets/indicator/indicator.dart';
import 'package:studio/ui_kit/widgets/list/chevron/list_chevron_material.dart';
import 'package:studio/ui_kit/widgets/list/list.dart';
import 'package:studio/ui_kit/widgets/list/section/list_section_material.dart';
import 'package:studio/ui_kit/widgets/list/tile/list_tile_material.dart';
import 'package:studio/ui_kit/widgets/scaffold/scaffold_material.dart';
import 'package:studio/ui_kit/widgets/switcher/switcher_material.dart';
import 'package:studio/ui_kit/widgets/text/field/text_field_material.dart';
import 'package:studio/ui_kit/widgets/text/text.dart';

const material = KitContainer(
  app: AppContainer(
    root: AppRootMaterial.make,
    bar: (fixed: AppBarFixedMaterial.make, sliver: AppBarSliverMaterial.make),
  ),
  button: ButtonContainer(
    filled: ButtonFilledMaterial.make,
    icon: (filled: ButtonIconFilledMaterial.make),
  ),
  dialog: DialogContainer(
    show: showDialogMaterial,
    alert: AlertDialogMaterial.make,
    action: DialogActionMaterial.make,
  ),
  divider: DividerMaterial.make,
  icon: IconContainer(
    add: Icons.add,
    delete: Icons.delete,
    wifi: Icons.wifi,
    search: Icons.search,
    settings: Icons.settings,
    home: (filled: Icons.home, outlined: Icons.home_outlined),
  ),
  indicator: IndicatorContainer(activity: IndicatorActivityMaterial.make),
  list: ListContainer(
    section: ListSectionMaterial.make,
    tile: ListTileMaterial.make,
    chevron: ListChevronMaterial.make,
  ),
  scaffold: ScaffoldMaterial.make,
  switcher: SwitcherMaterial.make,
  text: TextContainer(field: TextFieldMaterial.make),
  layout: layout,
);
