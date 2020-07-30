import 'package:flutter/material.dart';
import 'package:finance_app/signin.dart';
// TESTING COMMENT

//TESTING COMMENT 2
void main() {
  WidgetsFlutterBinding.ensureInitialized();  // load the SplashScreen
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'splttr',
      theme: ThemeData(
        primaryColor: Color(0xFF40E0D0),
        scaffoldBackgroundColor: Colors.white, // Color(0xFF393073)
//        accentColor: PurpleTheme.pinkishPurple,
//        canvasColor: PurpleTheme.blue,
//        textTheme:
//        Theme.of(context).textTheme.apply(fontFamily: 'Merriweather'),
      ),
      // home: AddSplit(),
      initialRoute: '/',
      routes: {
        '/': (context) => SigninScreen(),
      },
    );
  }
}
