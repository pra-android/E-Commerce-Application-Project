import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';

class OptionDeliveryContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double height;
  final double width;
  const OptionDeliveryContainer({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Center(child: CustomTextStyle(text: text, color: textColor)),
    );
  }
}
