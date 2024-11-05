import 'dart:math' as math;
import 'package:flutter/material.dart';

class DonutChartPainter extends CustomPainter {
  final double percentage;

  DonutChartPainter({this.percentage = 0.75}); 

  @override
  void paint(Canvas canvas, Size size) {
    Paint basePaint = Paint()
      ..color = Colors.grey.shade800 
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    Paint fillPaint = Paint()
      ..color = Colors.orangeAccent 
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    // Draw the background circle
    canvas.drawCircle(size.center(Offset.zero), size.width / 2, basePaint);

    // Draw the arc for the filled portion
    double arcAngle = 2 * math.pi * percentage;
    canvas.drawArc(
      Rect.fromCircle(center: size.center(Offset.zero), radius: size.width / 2),
      -math.pi / 2, // Start angle from the top
      arcAngle, // Sweep angle
      false,
      fillPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
