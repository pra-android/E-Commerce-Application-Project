import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String text;
  final TextDecoration? decoration;
  const CustomTextStyle({
    super.key,
    this.fontSize,
    this.fontWeight,
    required this.text,
    this.color,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
