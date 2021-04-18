import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff000000);
const kHighlightColor = Color(0xffFFC326);
const kSecondaryColor = Color(0xffFF5353);
const kSecondaryHighlightColor = Color(0xff141414);
const ktertiaryColor = Color(0xff4D4D4D);

//Main font
const kPrimarytextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    //fontFamily: 'OpenSans',
    color: kSecondaryHighlightColor,
    fontSize: 20,
    fontStyle: FontStyle.normal);

//Secondary font
const kSecondaryTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: 30,
    fontStyle: FontStyle.normal);

//Navigation textstyle
const kNavbarTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    //fontFamily: 'OpenSans',
    color: kPrimaryColor,
    fontSize: 16,
    fontStyle: FontStyle.normal);

//Input text style
const kReusableInputFormTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.white,
    fontStyle: FontStyle.normal);

//Input text style
const kSmallTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: Colors.black,
    fontStyle: FontStyle.normal);

String emailValidator(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Email format is invalid';
  } else {
    return null;
  }
}

String pwdValidator(String value) {
  if (value.length < 3) {
    return 'This must be longer than 2 characters';
  } else {
    return null;
  }
}

String phoneValidator(String value) {
  if (value.length < 10) {
    return 'Phone number must be longer than 10 characters';
  } else {
    return null;
  }
}

//input decoration for forms
const kloginDecoration = InputDecoration(
  labelText: "Password",
  labelStyle: TextStyle(color: Colors.black),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
  // contentPadding: EdgeInsets.only(top: 40, bottom: 20),
  suffixIcon: Padding(
    padding: const EdgeInsetsDirectional.only(top: 18, start: 50),
    child: Icon(Icons.security, color: Colors.black),
  ),
);
