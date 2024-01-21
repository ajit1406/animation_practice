import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String tag;
  SecondPage({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Column(
        children: [
          Hero(
            tag: tag,
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/images/logo.jpg",
                fit: BoxFit.fill,
                height: 200,
              ),
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText("Hello", textStyle: const TextStyle(fontSize: 34)),
              FadeAnimatedText("World", textStyle: const TextStyle(fontSize: 34)),
              TyperAnimatedText("Welcome to Flutter",
                  textStyle: const TextStyle(fontSize: 34)),
            ],
            repeatForever: true,
          ),
        ],
      ),
    );
  }
}
