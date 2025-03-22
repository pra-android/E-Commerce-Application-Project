import 'package:ecommerce_application/extras/widgets/custom_button.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_form_field.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../screens/homescreen/home_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: CustomTextFormField(
              hintText: "Enter email",
              prefixIcon: Icons.email,
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: CustomTextFormField(
              hintText: "Enter password",
              prefixIcon: Icons.lock_outline,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: TextButton(
                  onPressed: () {},
                  child: CustomTextStyle(
                    text: "Forgot Password?",
                    color: Colors.red,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          CustomButton(
            width: 300.w,
            height: 45.h,
            buttonText: "LOGIN",
            onPressed: () {
              Get.to(() => HomeScreen());
            },
          ),
        ],
      ),
    );
  }
}
