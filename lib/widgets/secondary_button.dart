import 'package:flutter/material.dart';

class SecondaryReusableButton extends StatelessWidget {
  final title;
  final Function navigation;

  const SecondaryReusableButton({Key key, this.title, this.navigation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff7868e6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    textStyle:
                        TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xffdbf6e9),
                          fontSize: 18,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onPressed: () {
                  navigation();
                }),
          ),
        ],
      ),
    );
  }
}
