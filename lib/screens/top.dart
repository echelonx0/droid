import 'package:drone/constants.dart';
import 'package:drone/reusable_button.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //Add decoration with either gradient or image
        //Ideally animated
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
