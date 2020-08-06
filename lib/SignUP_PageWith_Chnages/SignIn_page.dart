import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Widgets.dart';

import 'SignUp_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
              height: height,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 24),
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(60),
                      child: Container(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: width * 0.1),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: textfield("Email"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: textfield("Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text('Forgot Password?',
                              style: TextStyle(fontSize: width * 0.04)),
                        ),
                      ],
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: width * 0.05),
                        ),
                      ),
                      color: Color(0xff64FFDA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'New User? ',
                          style: TextStyle(
                              color: Color(0xff616161), fontSize: width * 0.04),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignUp()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: width * 0.04),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: Color(0xff616161),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "OR",
                            style: TextStyle(
                              color: Color(0xff616161),
                              fontSize: width * 0.04,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xff616161),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: width * 0.7,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset('assets/images/google.jpg',
                                height: 50, width: 40),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Login with Google',
                              style: TextStyle(
                                color: Color(0xff616161),
                                fontSize: width * 0.04,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
