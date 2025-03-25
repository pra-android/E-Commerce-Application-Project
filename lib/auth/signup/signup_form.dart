import 'package:ecommerce_application/extras/widgets/custom_button.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 4.h),
            child: CustomTextFormField(
              hintText: "Email address",
              prefixIcon: Icons.email_outlined,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
            child: CustomTextFormField(
              hintText: "Username",
              prefixIcon: Icons.person_2_outlined,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
            child: CustomTextFormField(
              hintText: "Phone number",
              prefixIcon: Icons.phone_android_outlined,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
            child: CustomTextFormField(
              hintText: "Password",
              prefixIcon: Icons.password,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
            child: CustomTextFormField(
              hintText: "Confirm Password",
              prefixIcon: Icons.lock_outline,
            ),
          ),
          SizedBox(height: 20.h),
          CustomButton(
            buttonText: "Create Account",
            backgroundColor: Colors.red,
            onPressed: () {},
            height: 40.h,
            width: 300.w,
          ),
        ],
      ),
    );
  }
}
