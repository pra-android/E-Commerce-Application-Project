import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String text;
  final TextDecoration? decoration;
  final int? maxLines;
  final TextOverflow? textOverflow;
  const CustomTextStyle({
    super.key,
    this.fontSize,
    this.fontWeight,
    required this.text,
    this.color,
    this.decoration,
    this.maxLines,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,

      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
