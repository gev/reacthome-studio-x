import 'dart:ui';

import 'package:studio/ui/figures/iconic.dart';

const k_bar_length = 0.5;
const k_bar_gap = 0.35;

abstract class _BarIconic extends Iconic {
  final double barGap;
  final double barLength;
  final Path _path = Path();

  _BarIconic({
    required super.offset,
    required super.size,
    required super.iconicStyle,
  }) : barGap = size * k_bar_gap,
       barLength = size * k_bar_length;

  @override
  void paint(Canvas canvas) {
    canvas.drawPath(_path, strokeStyle);
  }
}

class HorizontalBarIconic extends _BarIconic {
  HorizontalBarIconic({
    required super.offset,
    required super.size,
    required super.iconicStyle,
  }) {
    _path
      ..moveTo(offset.dx - barLength, offset.dy - barGap)
      ..relativeLineTo(size, 0)
      ..relativeMoveTo(-size, barGap)
      ..relativeLineTo(size, 0)
      ..relativeMoveTo(-size, barGap)
      ..relativeLineTo(size, 0);
  }
}

class VerticalBarIconic extends _BarIconic {
  VerticalBarIconic({
    required super.offset,
    required super.size,
    required super.iconicStyle,
  }) {
    _path
      ..moveTo(offset.dx - barGap, offset.dy - barLength)
      ..relativeLineTo(0, size)
      ..relativeMoveTo(barGap, -size)
      ..relativeLineTo(0, size)
      ..relativeMoveTo(barGap, -size)
      ..relativeLineTo(0, size);
  }
}
