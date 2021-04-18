import 'package:drone/reusable_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CodeDumpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Address',
                  style: kPrimarytextStyle,
                ),
                TextButton(
                  child: Text('Change'),
                  onPressed: () {
                    //Provide option to change
                  },
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: 200,
                    child: Text(
                        '34 Kenya Nyaeri Street, Saltriver, Burundi Close, Missisipi'),
                  ),
                ),
                Text('')
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Divider(
                color: kSecondaryHighlightColor,
                //thickness: 0.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order (including VAT)'),
                Text(
                  'R145',
                  style: kPrimarytextStyle,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery fee',
                ),
                Text(
                  'Free',
                  style: kPrimarytextStyle,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Divider(
                color: kSecondaryHighlightColor,
                //thickness: 0.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: kSecondaryHighlightColor,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                ),
                Text(
                  'R145',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ReusableButton(
                  title: 'Do breathing execise Now',
                  navigation: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
