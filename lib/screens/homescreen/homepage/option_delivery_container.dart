import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';

class OptionDeliveryContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double height;
  final double width;
  final FontWeight? fontWeight;
  final Color borderColor;
  const OptionDeliveryContainer({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.height,
    this.fontWeight,
    required this.width,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,

      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor),
      ),

      child: Center(
        child: CustomTextStyle(
          text: text,
          color: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
