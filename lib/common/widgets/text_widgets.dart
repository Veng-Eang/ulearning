import 'package:flutter/material.dart';

Widget textNomal({required String text, double? fontSize, Color? color}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
    ),
  );
}
