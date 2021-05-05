import 'package:drone/constants.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment(
        //         0.8, 0.1), // 10% of the width, so there are ten blinds.
        //     colors: [
        //       const Color(0xff1cc5dc),
        //       const Color(0xff00adb5)
        //     ], // red to yellow
        //     tileMode: TileMode.mirror, // repeats the gradient over the canvas
        //   ),
        // ),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Your profile is 45% complete. Please take a moment to tell the app a little bit about yourself. This will assist our algorithms to help you',
            style: kPrimarytextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ));
  }
}
