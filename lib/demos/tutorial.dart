import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  //This is a basic function
  //We pass IN parameters AKA argument
  void randomFunction(int audioFile) {}
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: TextButton(
        child: Text('Click Me'),
        onPressed: () {
          randomFunction(6);
        },
      ),
    ));
  }
}
