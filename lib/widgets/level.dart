import 'package:drone/demos/tutorial.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LevelWidget extends StatelessWidget {
  static const korangeColor = Color(0xff046582);
  static const kwhiteColor = Color(0xffedffec);

  @override
  Widget build(BuildContext context) {
    //Bring in the box

    return Container(
      child: Column(
        children: [
          Container(
              height: 175,
              width: MediaQuery.of(context).size.width - 55,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   color: korangeColor,
              //   gradient: LinearGradient(
              //     begin: Alignment.centerLeft,
              //     end: Alignment(
              //         0.3, 0.5), // 10% of the width, so there are ten blinds.
              //     colors: [
              //       const Color(0xff046582),
              //       const Color(0xff00adb5)
              //     ], // red to yellow
              //     tileMode:
              //         TileMode.mirror, // repeats the gradient over the canvas
              //   ),
              // ),
              child: TopicsList()),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Practice and Collect badges'),
            ),
          ),
          AwardsWidget()
        ],
      ),
    );
  }
}

class AwardsWidget extends StatefulWidget {
  @override
  _AwardsWidgetState createState() => _AwardsWidgetState();
}

class _AwardsWidgetState extends State<AwardsWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 2.0, end: 5.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          width: double.infinity,
          // decoration: BoxDecoration(
          //     //And used here
          //     color: Color(0xff51c4d3),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(10.0),
          //     )),
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'You are a novice. \n',
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Grow your rank by journalling, meditating ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' or doing community service'),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                right: 45,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage('images/icons8-trophy.gif'),
                    width: 150,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 27, 28, 30),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(130, 237, 125, 58),
                            blurRadius: _animation.value,
                            spreadRadius: _animation.value)
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
      flex: 1,
    );
  }
}
