import 'package:animation/hero/hero_seco.dart';
import 'package:flutter/material.dart';

class HomePageAni extends StatelessWidget {
  const HomePageAni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first Page"),
      ),
      body: Center(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: 9 / 5),
            itemBuilder: (_, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                tag: '$index',
                              )));
                },
                child: Hero(
                  tag: "$index",
                  child: Image.asset(
                    "assets/images/bg_img.jpeg",
                    fit: BoxFit.fill,
                    height: 100,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
