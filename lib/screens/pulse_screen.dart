import 'package:flutter/material.dart';

class PulseScreen extends StatefulWidget {
  @override
  _PulseScreenState createState() => _PulseScreenState();
}

class _PulseScreenState extends State<PulseScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 55.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        child: Icon(
          Icons.mic,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 27, 28, 30),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(130, 237, 125, 58),
                  blurRadius: _animation.value,
                  spreadRadius: _animation.value)
            ]),
      ),
    );
  }
}
