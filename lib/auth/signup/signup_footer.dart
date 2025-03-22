import 'package:ecommerce_application/extras/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Text("or sign up with"),
              ),
              Expanded(child: Divider()),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: SizedBox(
            width: double.infinity,
            height: 57.h,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),

                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstant.googleLogo,
                      height: 30.h,
                      width: 40.w,
                    ),
                    Text(
                      "Continue with Google",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Center(
          child: Text(
            "By Clicking Create account you create to Recognotes",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.w,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
