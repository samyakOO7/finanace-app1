import 'package:flutter/material.dart';

Widget socialmedia(String url) {
  return Container(
    height: 60,
    width: 70,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0, // soften the shadow
            spreadRadius: 0, //extend the shadow
          )
        ]),
    child: FlatButton(
      onPressed: () {},
      child: Image.asset(
        url,
        height: 60,
        width: 60,
      ),
    ),
  );
}

Text socialtext(String name) {
  return Text(
    name,
    style: TextStyle(
      fontSize: 12,
      color: Color(0xff373D3F),
      decoration: TextDecoration.none,
    ),
  );
}

Widget space() {
  return SizedBox(
    height: 5,
  );
}
