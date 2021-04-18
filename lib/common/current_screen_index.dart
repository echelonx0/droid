import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../card_screen.dart';
import '../home_page_sceen.dart';

class CurrentScreenIndex extends StatelessWidget {
  final int index;

  CurrentScreenIndex(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 1:
        {
          return HomePageScreen();
        }
        break;
      case 2:
        {
          return CardScreen();
        }
        break;
      case 3:
        {
          return CardScreen();
        }
        break;
      default:
        {
          return HomePageScreen();
        }
        break;
    }
  }
}
