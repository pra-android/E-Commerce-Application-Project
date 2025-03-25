import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color backgroundColor;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,

      child: CustomTextStyle(
        text: buttonText,
        color: Colors.white,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
