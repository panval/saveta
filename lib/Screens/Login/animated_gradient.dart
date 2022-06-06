import 'package:flutter/material.dart';

class AnimatedGradient extends StatefulWidget {
  const AnimatedGradient({Key? key}) : super(key: key);

  @override
  _AnimatedGradientState createState() => _AnimatedGradientState();
}

class _AnimatedGradientState extends State<AnimatedGradient> {
  List<Color> colorList = [
    Colors.grey.shade700,
    Colors.blueGrey,
    Colors.blue.shade700,
    Colors.teal.shade900
  ];
  List<Alignment> alignmentList = [
    Alignment.topCenter,
    Alignment.bottomCenter,
  ];
  int index = 0;
  Color bottomColor = Colors.red.shade700;
  Color topColor = Colors.black;
  Alignment begin = Alignment.topCenter;
  Alignment end = Alignment.bottomCenter;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 10), () {
      setState(() {
        bottomColor = Colors.black;
      });
    });
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 3),
            onEnd: () {
              setState(() {
                index = index + 1;
                // animate the color
                bottomColor = colorList[index % colorList.length];
                topColor = colorList[(index + 1) % colorList.length];

                //// animate the alignment
                // begin = alignmentList[index % alignmentList.length];
                // end = alignmentList[(index + 2) % alignmentList.length];
              });
            },
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: begin, end: end, colors: [bottomColor, topColor])),
          ),
        ],
      ),
    );
  }
}
