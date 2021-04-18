import 'dart:async';
import 'package:drone/screens/landing_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // setState(() {
    //   opacity = 1.0;
    // });
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LandingScreen())));
  }

  changeOpacity() {
    setState(() {
      opacity = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    changeOpacity();
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: opacity,
              curve: Curves.easeInOutBack,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Keep a Sentinel at the portal to your mind...\n-Jim Rohn',
                    style: kSecondaryTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MainStreamPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<User>(context);
//     return user == null
//         ? Scaffold(
//             body: LandingPage(),
//           )
//         : Scaffold(
//             body: IndexScreen(),
//           );
//   }
// }
