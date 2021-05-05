import 'package:drone/screens/home.dart';
import 'package:drone/screens/pulse_screen.dart';
import 'package:flutter/material.dart';

class MyDemo extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Your transactions'),
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeScreen(),
            PulseScreen(),
          ],
        ),
      ),
    );
  }
}
