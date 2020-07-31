import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finance_app/HomePage.dart';
import 'package:finance_app/components/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/dividerWithText.dart';
import 'components/text_field_decoration.dart';


class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences;


  bool isLoggedIn = false;
  bool isLoading = false;
  FirebaseUser currentUser;


  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  var _isProcessing;

  @override
  void initState() {
    super.initState();
    _isProcessing = false;

    isSignedIn();
  }

  void isSignedIn() async {
    this.setState(() {
      isLoggedIn = true;
    });

    preferences = await SharedPreferences.getInstance();

    isLoggedIn = await googleSignIn.isSignedIn();

    if (isLoggedIn) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          HomeScreen(currentUserId: preferences.getString("id"))));
    }
    this.setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _processUserData(String username, String password) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                        color: Colors.teal.shade200,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 200.0,
                  ),
                  Container(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        enabled: !_isProcessing,
                        controller: _usernameController,
                        validator: (value) {
                          return null;
                        },
                        cursorColor: Theme
                            .of(context)
                            .primaryColor,
                        decoration: TextFieldDecoration
                            .circularBorderDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Username',
                          hintText: 'What should we call you?',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        enabled: !_isProcessing,
                        controller: _passwordController,
                        cursorColor: Theme
                            .of(context)
                            .primaryColor,
                        obscureText: true,
                        validator: (value) {
                          return null;
                        },


                        // validator: ,
                        decoration: TextFieldDecoration
                            .circularBorderDecoration(
                          icon: Icon(Icons.lock),
                          labelText: 'Password',
                          hintText: 'Your password',
                        ),
                      ),
                    ),
                  ),
                  Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: FlatButton(
                            onPressed: _isProcessing ? null : () {},
                            textColor: Theme
                                .of(context)
                                .primaryColor,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ]),

                  RoundedButton(title: "Sign In",
                      onPress: () {},
                      color: Color(0xFF40C8D0)),
                  Center(
                    child: FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                              'New User?',
                              style: TextStyle(fontSize: 15,
                                  color: Colors.black)
                          ),
                          Text(
                              'Sign up',
                              style: TextStyle(fontSize: 15,
                                  color: Colors.blueAccent)
                          ),
                        ],
                      ),
                    ),
                  ),
                  HorizontalOrLine(height: 10, label: "OR"),
                  SignInButton(

                    Buttons.Google,
                    onPressed: controlSignIn,
                  ),
                ],
              ),

            )),
      ),
    );
  }


  Future<Null> controlSignIn() async {
    preferences = await SharedPreferences.getInstance();
    this.setState(() {
      isLoading = true;
    });

    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuthentication = await googleUser
        .authentication;
    final AuthCredential credential = GoogleAuthProvider
        .getCredential(idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken);

    FirebaseUser firebaseUser = (await firebaseAuth.signInWithCredential(
        credential)).user;

// Sign in success

    if (firebaseUser != null) {
      // if already signed up

      final QuerySnapshot resultQuery = await Firestore.instance
          .collection("users")
          .where("id", isEqualTo: firebaseUser.uid)
          .getDocuments();
      final List<DocumentSnapshot> documentSnapshots = resultQuery.documents;

      // if user is new

      if (documentSnapshots.length == 0) {
        Firestore.instance.collection("users")
            .document(firebaseUser.uid)
            .setData({

          "username": firebaseUser.displayName,
          "photoUrl": firebaseUser.photoUrl,
          "createdAt": DateTime
              .now()
              .millisecondsSinceEpoch
              .toString(),
        });

        // write data locally

        currentUser = firebaseUser;
        await preferences.setString("id", currentUser.uid);
        await preferences.setString("username", currentUser.displayName);
        await preferences.setString("photoUrl", currentUser.photoUrl);
      }
      else {
        //retrieve data from firebase
        currentUser = firebaseUser;
        await preferences.setString("id", documentSnapshots[0]["id"]);
        await preferences.setString(
            "username", documentSnapshots[0]["username"]);
        await preferences.setString(
            "photoUrl", documentSnapshots[0]["photoUrl"]);
      }

      Fluttertoast.showToast(msg: "Sign In Success !!");
      this.setState(() {
        isLoading = false;
      });

      Navigator.push(context, MaterialPageRoute(
          builder: (context) => HomeScreen(currentUserId: firebaseUser.uid)));
    }

// sign in failed

    else {
      Fluttertoast.showToast(msg: "Please try again !!");
      this.setState(() {
        isLoading = false;
      });
    }
  }
}



