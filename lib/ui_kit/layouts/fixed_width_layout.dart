import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:studio/ui_kit/kit.dart';

class FixedWidthLayout extends StatelessWidget {
  final String title;
  final double width;
  final Widget body;

  const FixedWidthLayout({
    required this.title,
    this.width = 720,
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return scaffold(
      body: Center(
        child: SizedBox(
          width: min(width, size.width),
          child: CustomScrollView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            slivers: [
              app.bar.sliver(context, title: title),
              SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: true,
                child: body,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
