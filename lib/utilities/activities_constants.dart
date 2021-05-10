import 'package:drone/models/activity_model.dart';
import 'package:flutter/material.dart';

class Constants {
  static const Color primaryTextColor = Color.fromRGBO(38, 50, 98, 1);
  static const Color captionTextColor = Color.fromRGBO(157, 161, 180, 1);
  static const Color primaryColor = Color.fromRGBO(255, 99, 128, 1.0);

  static List<TopicModel> topics = [
    TopicModel(
      color: Constants.primaryColor,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(255, 99, 128, 0.6),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
      topic: "Write your first journal entry",
      time: "10 min",
      points: "23",
      image: "images/notes.png",
    ),
    TopicModel(
      color: Color.fromRGBO(25, 118, 210, 1),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(25, 118, 210, 0.6),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
      topic: "Volunteer for community service",
      time: "5 min",
      points: "73",
      image: "images/bg_3.png",
    ),
    TopicModel(
      color: Color(0xff00adb5),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(25, 118, 210, 0.6),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
      topic: "Vote on a project",
      time: "3 min",
      points: "37",
      image: "images/bubbles.png",
    )
  ];

  static List<String> courseLevels = [
    "Beginner",
    "Intermediate",
    "Advanced",
    "Professional"
  ];

  // ];
  // static List<CourseModel> courses = [
  //   CourseModel(
  //     name: "Daily English Conversation",
  //     color: Color.fromRGBO(86, 131, 223, 1),
  //     image: "assets/images/course-3.png",
  //   ),
  //   CourseModel(
  //     name: "Learn new vocabulary",
  //     color: Color.fromRGBO(255, 152, 117, 1),
  //     image: "assets/images/course-4.png",
  //   ),
  //   CourseModel(
  //     name: "Daily English Conversation",
  //     color: Color.fromRGBO(255, 133, 125, 1),
  //     image: "assets/images/course-5.png",
  //   ),
  // ];
  // static List<InstructorModel> instructors = [
  //   InstructorModel(
  //     name: "Jennifer Lee",
  //     occupation: "UI Designer",
  //     image: "assets/images/person-1.png",
  //   ),
  //   InstructorModel(
  //     name: "Olayemii Garuba",
  //     occupation: "Software Dev",
  //     image: "assets/images/person-2.png",
  //   ),
  //   InstructorModel(
  //     name: "Christopher Gary",
  //     occupation: "Software Dev",
  //     image: "assets/images/person-3.png",
  //   )
  // ];
}
