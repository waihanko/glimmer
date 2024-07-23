part of 'glimmer.dart';


class _GlimmerEffectPainter extends CustomPainter {
  final Animation<double> animation;
  final double radius;
  final double stroke;
  final ShapeBorder shape;
  final List<double> stops;
  final bool clockWise; // Rotation direction
  final List<Color> colors;

  _GlimmerEffectPainter({
    required this.animation,
    required this.colors,
    required this.stops,
    this.radius = 8.0,
    this.stroke = 4.0,
    required this.shape,
    this.clockWise = true,
  }) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..shader = LinearGradient(
        colors: colors,
        stops: stops,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(
          // Rotate based on animation value and direction
          (2 * math.pi * animation.value * (clockWise ? 1 : -1)) -
              math.pi / 2, // Start from the top
        ),
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke;

    final Path path = Path();
    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect rrect = RRect.fromRectAndRadius(rect, Radius.circular(radius));

    if (shape is RoundedRectangleBorder) {
      path.addRRect(rrect);
    } else if (shape is CircleBorder) {
      path.addOval(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2));
    } else {
      path.addRRect(rrect);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
