import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../extras/constants/image_constant.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Image.asset(ImageConstant.loginLogo),
        CustomTextStyle(
          text: "Login Now",
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 4.h),
        CustomTextStyle(
          text: "Please enter the details below to continue",
          color: Colors.grey.shade700,
          fontSize: 12.sp,
        ),
      ],
    );
  }
}
