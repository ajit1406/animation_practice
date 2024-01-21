import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LotieAniPage extends StatelessWidget {
  const LotieAniPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie practice"),
      ),
      body: Lottie.asset("assets/lottie/cycling.json"),
    );
  }
}
