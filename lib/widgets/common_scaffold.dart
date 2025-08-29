import 'dart:math';
import 'package:flutter/material.dart';

class BubbleBackgroundScaffold extends StatefulWidget {
  const BubbleBackgroundScaffold({
    super.key,
    this.actions,
    required this.body,
    this.title,
    this.extendBodyBehindAppbar = false,
  });
  final List<Widget>? actions;
  final Widget body;
  final String? title;
  final bool extendBodyBehindAppbar;
  @override
  State<BubbleBackgroundScaffold> createState() =>
      _BubbleBackgroundScaffoldState();
}

class _BubbleBackgroundScaffoldState extends State<BubbleBackgroundScaffold>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Random random = Random();
  final int numberOfBubbles = 8;
  late List<Bubble> bubbles;

  @override
  void initState() {
    super.initState();
    bubbles = List.generate(
      numberOfBubbles,
      (index) => Bubble(
        x: random.nextDouble(),
        y: random.nextDouble(),
        size: random.nextDouble() * 60 + 20, // 20 to 80
        speed: random.nextDouble() * 0.002 + 0.0005,
      ),
    );

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 100),
    )..repeat(); // infinite animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void updateBubbles() {
    for (var bubble in bubbles) {
      bubble.y -= bubble.speed;
      if (bubble.y < -0.1) {
        bubble.y = 1.1;
        bubble.x = random.nextDouble();
        bubble.size = random.nextDouble() * 60 + 20;
        bubble.speed = random.nextDouble() * 0.002 + 0.0005;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: widget.extendBodyBehindAppbar,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        actions: widget.actions,
        title: widget.title != null ? Text(widget.title!) : null,
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          updateBubbles();
          return Stack(
            children: [
              // Bubbles
              ...bubbles.map((bubble) {
                return Positioned(
                  left: bubble.x * MediaQuery.of(context).size.width,
                  top: bubble.y * MediaQuery.of(context).size.height,
                  child: Container(
                    width: bubble.size,
                    height: bubble.size,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }).toList(),
              // Your main content
              widget.body,
            ],
          );
        },
      ),
    );
  }
}

class Bubble {
  double x;
  double y;
  double size;
  double speed;

  Bubble({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
  });
}
