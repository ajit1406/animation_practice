import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double mWidth = 100;
  double mHeight = 100;
  Color mColor = Colors.blue;
  double mBorderRadius = 21;
  double mOpacity = 0.2;
  bool isFirstVisible = true;
  int randomNo = 100;
  bool isUnique = false;

  Alignment mAlignment = Alignment.topLeft;

  var arrAlignment = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: InkWell(
        onTap: () {
          /*mWidth = 200;
          mHeight = 200;
          mColor = mColor== Colors.primaries[Random().nextInt(Colors.primaries.length - 1)];
          mBorderRadius = Random().nextInt(50).toDouble();*/
          mOpacity = mOpacity == 1 ? 0.5 : 1;
          isFirstVisible = !isFirstVisible;
          setState(() {});
        },
        child: Center(
            child: AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("tab to reveal"),
                  ),
                ),
                secondChild: SizedBox(
                  width: 200,
                  height: 100,
                  child: Text("Ithr kya hai"),
                ),
                crossFadeState: isFirstVisible
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 2))),
      ),
    );
  }
}

//AnimatedContainer(
//             duration: Duration(seconds: 2),
//             width: mWidth,
//             height: mHeight,
//             decoration: BoxDecoration(
//                 color: mColor,
//                 borderRadius: BorderRadius.circular(mBorderRadius)),
//           ),

//AnimatedOpacity(
//           duration: Duration(seconds: 2),
//           opacity: mOpacity,
//           child: Container(
//             color: Colors.blue,
//             width: 200,
//             height: 200,
//           ),
//         )
