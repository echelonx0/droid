import 'package:drone/animations/four.dart';
import 'package:drone/animations/one.dart';
import 'package:drone/animations/three.dart';
import 'package:drone/animations/two.dart';
import 'package:drone/screens/pulse_screen.dart';
import 'package:drone/user_data/kyc.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class EarnToken extends StatefulWidget {
  final String userUID;

  const EarnToken({Key key, this.userUID});

  @override
  _EarnTokenState createState() => _EarnTokenState();
}

class _EarnTokenState extends State<EarnToken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PulseScreen(),
      // body: TestingAnimations(),
      // body: PhysicsCardDragDemo(),
      // body: CurvedAnimationDemo(),
      // body: AnimatedContainerDemo(),
      body: AnimatedPositionedDemo(),
    );
  }
}

Widget topWidget(String userID) {
  return Container(
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: QrImage(
                foregroundColor: Colors.black,
                data: userID,
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          ),
        ),
      ],
    )),
  );
}

Widget bottomWidget(String userID) {
  return Center(
    child: Text(
      'Show this QR Code to the person giving you the tokens',
      textAlign: TextAlign.center,
    ),
  );
}
