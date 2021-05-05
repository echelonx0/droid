import 'package:animations/animations.dart';
import 'package:drone/constants.dart';
import 'package:flutter/material.dart';

class TestingAnimations extends StatefulWidget {
  @override
  _TestingAnimationsState createState() => _TestingAnimationsState();
}

class _TestingAnimationsState extends State<TestingAnimations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OpenContainer(
          transitionType: ContainerTransitionType.fadeThrough,
          closedBuilder: (context, action) {
            return Center(
              child: Text(
                'Touch me!',
                style: kNavbarTextStyle,
              ),
            );
          },
          openBuilder: (context, action) {
            return Center(
                child: Image(image: AssetImage('images/bubbles.png')));
          }),
    );
  }
}
