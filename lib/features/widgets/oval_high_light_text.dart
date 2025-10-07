import 'dart:math' as math;
import 'package:flutter/material.dart';

class OvalHighlightText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color strokeColor;

  const OvalHighlightText({
    super.key,
    required this.text,
    this.textStyle,
    this.strokeColor = const Color(0xFF00F5CC),
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _OvalPainter(color: strokeColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          text,
          style:
              textStyle ??
              const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}

class _OvalPainter extends CustomPainter {
  final Color color;

  _OvalPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..strokeCap = StrokeCap.round;

    final rect = Rect.fromLTWH(-6, -2, size.width + 12, size.height + 6);

    final path = Path();
    const steps = 120;
    final startAngle = -math.pi / 20;
    final sweepAngle = 2 * math.pi * 0.90; // deja pequeña abertura

    for (int i = 0; i <= steps; i++) {
      final angle = startAngle + (sweepAngle / steps) * i;
      final rx = rect.width / 2;
      final ry = rect.height / 2;
      final x = rect.center.dx + rx * math.cos(angle);
      final y = rect.center.dy + ry * math.sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    // dibujar el óvalo
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
