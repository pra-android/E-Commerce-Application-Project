import 'package:ecommerce_application/extras/widgets/custom_button.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../auth/login/login.dart';
import '../extras/constants/image_constant.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 35.h),
            Center(child: Image.asset(ImageConstant.landingPageImage)),
            SizedBox(height: 15.h),
            CustomTextStyle(
              text: "Welcome to Phat Mobile app",
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.all(9.w),
              child: CustomTextStyle(
                text:
                    "📢 Shop the best foods at unbeatable prices!.Discover top-quality foods with seamless shopping and fast delivery.Don't miss out on limited-time offers and special promotions.",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5.h),

            SizedBox(height: 60.h),

            CustomButton(
              buttonText: "Continue",
              backgroundColor: Colors.red,
              width: 290.w,
              height: 40.h,
              onPressed: () {
                Get.to(() => LoginPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
