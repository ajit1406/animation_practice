import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    //print(controller.value);
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
