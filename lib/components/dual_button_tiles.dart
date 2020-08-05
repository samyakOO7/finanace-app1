import 'package:flutter/material.dart';
//button for signin and sign up
class ProfileButtons extends StatelessWidget {
  ProfileButtons({this.color, @required this.title, @required this.onPress, this.radius = 15.0, @required this.width, @required this.icon});

  final String title;
  final Color color;
  final double radius;
  final Function onPress;
  final double width;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: width,
          height: 50.0,
          child: Row(
            children: <Widget>[
              Icon(icon),
              SizedBox(width: 8.0,),
              Text(
                title,
                style: TextStyle(color: Colors.black),
              ),
              Expanded(child: Align(alignment: Alignment.bottomRight,child: Icon(Icons.keyboard_arrow_right,color: Colors.black26,)))
            ],
          ),
        ),
      ),
    );
  }
}
