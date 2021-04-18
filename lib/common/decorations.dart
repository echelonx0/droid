import 'package:flutter/material.dart';

class FormDecoration {
  final String labelText;
  final Icon suffixIcon;

  static const inputDecoration = InputDecoration(
    // labelText: "Username",
    labelStyle: TextStyle(color: Colors.white),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    // contentPadding: EdgeInsets.only(top: 40, bottom: 20),
    suffixIcon: Padding(
      padding: const EdgeInsetsDirectional.only(top: 18, start: 50),
      child: Icon(Icons.security, color: Colors.black),
    ),
  );

  static const journalInputDecoration = InputDecoration(
    labelText: "Let your thoughts out",
    hintText: "What's on your mind?",
    labelStyle: TextStyle(color: Colors.black),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    contentPadding: EdgeInsets.only(top: 10, bottom: 20, left: 5),
  );

  FormDecoration(this.labelText, this.suffixIcon);
}
