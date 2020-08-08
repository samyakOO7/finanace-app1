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
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(0),
      elevation: 0.0,
      child: Column(
        children: <Widget>[
          MaterialButton(
            onPressed: onPress,
            minWidth: width,
            height: 60.0,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(icon,color: Colors.black54,),
                SizedBox(width: 8.0,),
                Text(
                  title,
                  style: TextStyle(color: Color(0xFF373D3F),fontWeight: FontWeight.normal),
                ),
                Expanded(child: Align(alignment: Alignment.bottomRight,child: Icon(Icons.keyboard_arrow_right,color: Colors.black26,)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
