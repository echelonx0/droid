import 'package:drone/screens/pulse_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Switcher")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          isVisible = !isVisible;
        });
      }),
      body: Center(
          child: AnimatedSwitcher(
        switchInCurve: Curves.easeInBack,
        child: isVisible
            ? Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
              )
            : PulseScreen(),
        duration: Duration(seconds: 2),
      )),
    );
  }
}
