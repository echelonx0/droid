import 'package:drone/utilities/activities_constants.dart';
import 'package:flutter/material.dart';

import 'activities_card.dart';

class TopicsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: Constants.topics.length,
        itemBuilder: (BuildContext context, int index) {
          return TopicCard(
            topic: Constants.topics[index],
          );
        },
      ),
    );
  }
}
