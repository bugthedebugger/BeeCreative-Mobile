import 'package:flutter/material.dart';

class ColorModel {
  final Color light;
  final Color dark;
  final Color darker;
  final Color fontColor;

  ColorModel({
    @required this.light,
    @required this.dark,
    this.darker = Colors.black,
    this.fontColor = Colors.white,
  });
}
