import 'package:flutter/material.dart';
import 'package:todo_app/widgets/decoration_widgets/container_bubble.dart';
import 'package:todo_app/widgets/decoration_widgets/custom_shaper_test_painter.dart';
import 'package:todo_app/widgets/decoration_widgets/test_clipper.dart';

import 'test_painter.dart';

class EmptyItems extends StatelessWidget {
  const EmptyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BubbleContainer(
          right: -150,
          top: -100,
          color: Colors.amber.withOpacity(0.2),
          height: 300,
          width: 300,
        ),
        BubbleContainer(
          left: -150,
          top: 300,
          color: Colors.red.withOpacity(0.2),
          height: 300,
          width: 300,
        ),
        BubbleContainer(
          right: -15,
          bottom: 50,
          color: Colors.purple.withOpacity(0.2),
          height: 100,
          width: 100,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: TestClipper(),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(color: Colors.green.withOpacity(0.3)),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: CustomPaint(
            size: Size(350, 150),
            painter: TestPainter(borderRadius: 20),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: CustomPaint(
            size: const Size(350, 350 * 0.5833),
            painter: RPSCustomPainter(),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Uh oh... nothing here!",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                "Try selecting a different category!",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
