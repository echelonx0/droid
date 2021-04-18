import 'package:drone/common/decorations.dart';
import 'package:flutter/material.dart';

import 'secondary_button.dart';

class JournallingScreen extends StatefulWidget {
  @override
  _JournallingScreenState createState() => _JournallingScreenState();
}

class _JournallingScreenState extends State<JournallingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     'Time to journal!',
            //     style: kSecondaryTextStyle,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                minLines: 6,
                maxLines: 10,
                decoration: FormDecoration.journalInputDecoration,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SecondaryReusableButton(
                title: 'Save',
                navigation: () {
                  //Save to journals collection
                },
              ),
            )
            // Container(
            //   height: 250,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('images/bg_1.png'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
