import 'package:flutter/widgets.dart';
import 'package:studio/ui_kit/kit.dart';

class DefaultLayout extends StatelessWidget {
  final Widget body;

  const DefaultLayout({required this.body, super.key});

  @override
  Widget build(BuildContext context) => scaffold(body: body);
}
