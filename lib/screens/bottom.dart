import 'package:drone/reusable_button.dart';
import 'package:drone/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SecondaryReusableButton(
              title: 'Write in your journal',
              navigation: () {},
            ),
            ReusableButton(
              title: 'How are you feeling today?',
              navigation: () {
                //Show modal
              },
            ),
            SecondaryReusableButton(
              title: 'Do a calming practice',
              navigation: () {},
              buttonColor: Colors.redAccent,
            )
          ],
        )));
  }
}
