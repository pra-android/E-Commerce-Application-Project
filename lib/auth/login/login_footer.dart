import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../signup/signup.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextStyle(text: "Already have an account?"),
            TextButton(
              onPressed: () {
                Get.to(() => SignUpPage());
              },
              child: Text("Register"),
            ),
          ],
        ),
      ],
    );
  }
}
