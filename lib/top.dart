import 'package:flutter/material.dart';

import 'show_cart_item.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ShowCartContent(
            title: 'This is a meal',

            // checkboxCallback: (checkboxState) {
            //   taskData.updateTask(task);
            // },
            deleteFunction: () {
              //taskData.deleteTask(task);
              print('I was tapped');
            },
          );
        },
        itemCount: 3,
      ),
    );
  }
}
