import 'dart:math';

import 'package:flutter/material.dart';

class ExplicitPage extends StatefulWidget {
  const ExplicitPage({super.key});

  @override
  State<ExplicitPage> createState() => _ExplicitPageState();
}

class _ExplicitPageState extends State<ExplicitPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationDouble;
  late Animation<Color?> animationTween;

  @override
  void initState() {
    super.initState();

    //0 to 1
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..addListener(() {
            //print(animationTween.value);
            print(controller.value);

            /* setState(() {

      });*/
          }) /*..repeat(
      reverse: true
    )*/
          ..forward();
    //controller.forward();

    animationDouble = Tween<double>(begin: 0, end: 4 * pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    animationTween = ColorTween(begin: Colors.blue, end: Colors.orange)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
  }

  @override
  Widget build(BuildContext context) {
    print("Build function called!!");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller'),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: controller,
            builder: (_, childToAnimate) {
              return Transform.rotate(
                angle: animationDouble.value,
                child: childToAnimate,
              );
            },
            child: Image.asset(
              "assets/images/ic_clock.png",
              width: 100,
              height: 100,
            )),
      ),
    );
  }
}
