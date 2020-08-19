


import 'package:finance_app/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lock_screen/flutter_lock_screen.dart';
import 'package:local_auth/local_auth.dart';

import 'package:flutter/services.dart';

class PassCodeScreen extends StatefulWidget {
  PassCodeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PassCodeScreenState createState() => new _PassCodeScreenState();
}

class _PassCodeScreenState extends State<PassCodeScreen> {
  bool isFingerprint = false;

  Future<Null> biometrics() async {
    final LocalAuthentication auth = new LocalAuthentication();
    bool authenticated = false;

    try {
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Scan your fingerprint to authenticate',
          useErrorDialogs: true,
          stickyAuth: false);
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    if (authenticated) {
      setState(() {
        isFingerprint = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var myPass = [1, 2, 3, 4];
    return LockScreen(
        title: "Security Pin ",
        passLength: myPass.length,
        bgImage: "assets/images/lock.jpg",
        fingerPrintImage: "assets/images/fingerprint.png",
        showFingerPass: true,
        fingerFunction: biometrics,
        fingerVerify: isFingerprint,
        borderColor: Colors.white,
        showWrongPassDialog: true,
        wrongPassContent: "Wrong pass please try again.",
        wrongPassTitle: "Opps!",
        wrongPassCancelButtonText: "Cancel",
        passCodeVerify: (passcode) async {
          for (int i = 0; i < myPass.length; i++) {
            if (passcode[i] != myPass[i]) {
              return false;
            }
          }

          return true;
        },
        onSuccess: () {
          Navigator.of(context).pushReplacement(
              new MaterialPageRoute(builder: (BuildContext context) {
                return HomeScreen();
              }));
        });
  }
}


































//import 'package:finance_app/HomePage.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_lock_screen/flutter_lock_screen.dart';
//
//
//class PassCodeScreen extends StatefulWidget {
//
//  final String currentUserId;
//  PassCodeScreen({Key key, @required this.currentUserId}) : super(key: key);
//  @override
//  State createState() => _PassCodeScreen();
//
//}
//
//class _PassCodeScreen extends State<PassCodeScreen>
//{
//  @override
//  Widget build(BuildContext context) {
//
//    var myPass = [1,2,3,4];
//    return LockScreen(
//      title: "Security Pin",
//      passLength: myPass.length,
//      bgImage: 'assets/images/lock.jpg',
//      showFingerPass: false,
//      fingerFunction: () => print("pin"),
//      borderColor: Colors.white,
//      showWrongPassDialog: true,
//      wrongPassContent: "Wrong pin please try again",
//      wrongPassTitle: "Error !!",
//      wrongPassCancelButtonText: "Cancel",
//      passCodeVerify: (List<int> passcode) async{
//        for(int i=0;i<myPass.length;i++)
//          {
//            if(passcode[i]!=myPass[i])
//              {
//                return false;
//              }
//          }
//        return true;
//      },
//      onSuccess: (){
//        Navigator.pushReplacement(
//            context,
//            MaterialPageRoute(
//                builder: (BuildContext context) =>
//                    HomeScreen()));
//
//      });
//
//
//  }
//
//}
//
////class _PassCodeScreenState extends State<PassCodeScreen>
////{
////
////}
