import 'package:flutter/widgets.dart';
import 'package:macos_ui/macos_ui.dart';

class ButtonIconFilledMacOS extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onPressed;

  const ButtonIconFilledMacOS({
    required this.label,
    required this.icon,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PushButton(
      controlSize: ControlSize.regular,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MacosIcon(icon, size: 28),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}
