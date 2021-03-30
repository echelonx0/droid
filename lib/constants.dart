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
    fontWeight: FontWeight.w900,
    color: Colors.white,
    fontSize: 13,
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
    fontWeight: FontWeight.w100,
    fontSize: 16,
    color: Color(0xffFFC326),
    fontStyle: FontStyle.normal);

//Input text style
const kSmallTextStyle = TextStyle(
    fontWeight: FontWeight.w100,
    fontSize: 12,
    color: Colors.white,
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
  labelText: "Username",
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
    child: Icon(Icons.chevron_right, color: Colors.white),
  ),
);
