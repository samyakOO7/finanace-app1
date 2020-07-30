import 'package:flutter/material.dart';
//button for signin and sign up
class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, @required this.title, @required this.onPress, this.radius = 15.0});

  final String title;
  final Color color;
  final double radius;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
