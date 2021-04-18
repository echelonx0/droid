import 'package:drone/screens/login_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg_3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                child: Text(
                  'Start your sentinel journey',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage()));
                },
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      const Color(0xFFdbf6e9),
                      const Color(0xFFf3f4ed),
                    ],
                    begin: const FractionalOffset(0.1, 0.5),
                    end: const FractionalOffset(1.0, 0.3),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
