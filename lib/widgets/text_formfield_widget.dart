import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableTextInput extends StatelessWidget {
  final bool obscureTextCondition;
  final int minLines;
  final TextEditingController controller;

  const ReusableTextInput(
      {this.obscureTextCondition, this.minLines, this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
          validator: pwdValidator,
          controller: controller,
          obscureText: true,
          minLines: minLines,
          decoration: kloginDecoration),
    );
  }
}
