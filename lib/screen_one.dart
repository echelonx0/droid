import 'dart:io';
import 'package:drone/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: WebView(
                  initialUrl: 'https://chops-ng.web.app/checkout/test',
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ),
            //Draggable Scrollable sheet implementation within a stack
            DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.1,
              maxChildSize: 1.0,
              builder: (BuildContext context, myscrollController) {
                return Container(
                    color: Colors.tealAccent[200],
                    child: ListView(
                      children: [
                        Container(
                          height: 300,
                          color: Colors.red,
                        ),
                        Container(
                          height: 300,
                          color: Colors.blue,
                        ),
                        Container(
                          height: 300,
                          color: Colors.amber,
                        ),
                        Container(
                          height: 300,
                          color: Colors.pink,
                        ),
                      ],
                    ));
              },
            ),

            Positioned(
                bottom: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      //Using the page transition package
                      //Not very impressed
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.topToBottom,
                              child: HomeScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Click Me',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
