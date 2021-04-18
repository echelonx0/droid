import 'package:drone/widgets/text_formfield_widget.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();

    super.initState();
  }

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  bool showSpinner = false;
  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog(error) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'There was an error!',
              style: TextStyle(color: Colors.red),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('${error.message}'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Try again'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
            //color: Color(0XFFfe346e),
            ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: loginFormKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    height: 150,
                    width: 350,
                    // child: Image(
                    //   image: AssetImage('images/bubbles.png'),
                    // ),
                  ),
                ),
                Center(
                  child: Text(
                    "Save. Spend. Earn Money",
                    style: TextStyle(fontSize: 18.0, color: Color(0xff1b262c)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        controller: emailInputController,
                        keyboardType: TextInputType.emailAddress,
                        validator: emailValidator,
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ReusableTextInput(
                      obscureTextCondition: true,
                      controller: pwdInputController,
                      minLines: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            backgroundColor: Colors.black),
                        onPressed: () {
                          //Login sequence
                          //
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "LOGIN",
                                  textAlign: TextAlign.center,
                                  style: kReusableInputFormTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                        child: Text(
                          "Not Registered?",
                          style: kSmallTextStyle,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/registration');
                        },
                      ),
                      TextButton(
                        child: Text(
                          "Forgot Password?",
                          style: kSmallTextStyle,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/resetpassword');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
