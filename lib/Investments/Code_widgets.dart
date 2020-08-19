import 'package:flutter/material.dart';

Widget mutual(String imgurl, String name) {
  return GestureDetector(
    onTap: () {},
    child: Column(
      children: <Widget>[
        Image.asset(
          imgurl,
          height: 50,
        ),
        Text(name),
      ],
    ),
  );
}
