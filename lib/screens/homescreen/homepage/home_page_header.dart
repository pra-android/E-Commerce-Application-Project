import 'dart:math';
import 'package:ecommerce_application/extras/widgets/custom_button.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/option_delivery_container.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/pickup/pick_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 16.w, left: 20.w),
            child: CustomTextStyle(
              text: "It's a good day",
              color: Colors.black,
              fontSize: min(26.sp, 24),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.h, left: 20.w),
          child: CustomTextStyle(
            text: "for Phat Mobile Application",
            color: Colors.black,
            fontSize: min(20.sp, 24),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.h),
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 5.h),
          child: CustomTextStyle(
            text: "How would you like your food?",
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),
        Image.asset(
          "assets/paperbag.png",
          height: 300.h,
          width: 500.w,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 45.h),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: CustomButton(
            buttonText: "ORDER ONLINE",
            onPressed: () {
              showModalBottomSheetUI(context);
            },
            backgroundColor: Colors.red.shade700,
            height: 48.h,
            width: 350.w,
          ),
        ),
      ],
    );
  }

  void showModalBottomSheetUI(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  OptionDeliveryContainer(
                    backgroundColor: Colors.red.shade800,
                    height: 30.h,
                    width: 80.w,
                    textColor: Colors.white,
                    text: "PICKUP",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: OptionDeliveryContainer(
                      height: 30.h,
                      width: 80.w,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      text: "DELIVERY",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: CustomButton(
                  buttonText: "CONFIRM",
                  onPressed: () {
                    Get.to(() => PickUp());
                  },
                  height: 45.h,
                  width: 350.w,
                  backgroundColor: Colors.red.shade800,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
