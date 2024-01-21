import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            //print(animationTween.value);
            print(controller.value);

            setState(() {});
          }) /*..repeat(
      reverse: true
    )*/
          ..forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Container(
          width: controller.value * 200,
          height: controller.value * 200,
          color: Colors.orange,
          child: Text("Hello welcome to "),
        ),
      ),
    );
  }
}
