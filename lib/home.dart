import 'package:drone/bottom.dart';
import 'package:drone/top.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    child: TopWidget(),
                  ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 300.0,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
                child: SizedBox(
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 300.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: BottomWidget(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
