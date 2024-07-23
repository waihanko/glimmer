import 'package:flutter/material.dart';
import 'dart:math' as math;

part 'glimmer_effect_painter.dart';

class Glimmer extends StatefulWidget {
  final bool isActive;
  final Widget child;
  final double radius;
  final double stroke;
  final ShapeBorder shape;
  final List<Color>? colors;
  final List<double>? stops;
  final bool clockwise;
  final Duration? duration;

  Glimmer({
    super.key,
    required this.child,
    List<Color>? colors,
    List<double>? stops,
    Duration? duration,
    this.isActive = false,
    this.radius = 0,
    this.stroke = 4.0,
    this.shape = const RoundedRectangleBorder(),
    this.clockwise = true,
  })  : colors = colors ??
            [
              Colors.white.withOpacity(0.8),
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.1),
            ],
        stops = stops ?? [0.3, 0.5, 0.7],
        duration = duration ?? const Duration(seconds: 2),
        assert((colors?.length ?? 3) == (stops?.length ?? 3),
            "colors and stops must have the same length");

  @override
  GlimmerState createState() => GlimmerState();
}

class GlimmerState extends State<Glimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (widget.isActive)
          Positioned.fill(
            child: CustomPaint(
              painter: _GlimmerEffectPainter(
                animation: _animation,
                radius: widget.radius,
                stroke: widget.stroke,
                shape: widget.shape,
                colors: widget.colors!,
                stops: widget.stops!,
                clockWise: widget.clockwise, // Pass the rotation direction
              ),
            ),
          ),
        widget.child,
      ],
    );
  }
}
