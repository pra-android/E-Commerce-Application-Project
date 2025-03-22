import 'dart:math';
import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        CustomTextStyle(
          text: "Create an account",
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: min(18.sp, 22),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextStyle(
              text: "Already Have an account?",
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),

            TextButton(
              onPressed: () {
                Get.back();
              },
              child: CustomTextStyle(
                text: "Login",
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
