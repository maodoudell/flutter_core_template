import 'package:flutter/material.dart';

class TapAnimation extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const TapAnimation({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  State<TapAnimation> createState() => _TapAnimationState();
}

class _TapAnimationState extends State<TapAnimation> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  final Tween<double> scaleTween = Tween(begin: 1.0, end: 0.95);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
    );
  }

  Future<void> _tap() async {
    await controller.forward();
    await controller.reverse();
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _tap,
      child: ScaleTransition(
        scale: scaleTween.animate(controller),
        child: widget.child,
      ),
    );
  }
}
