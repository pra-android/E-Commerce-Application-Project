import 'package:ecommerce_application/extras/widgets/custom_button.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../extras/widgets/custom_text_style.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextStyle(
          text: "New Address",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(6.w),

          child: CircleAvatar(
            radius: 18.r,
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_outlined, size: 14.sp),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(left: 12.w, top: 8.h),
                child: CustomTextStyle(
                  text: "You can set the address by clicking the side icon",
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_pin, color: Colors.red),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0.w, top: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextStyle(
                      text: "Latitude",

                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextStyle(
                      text: "Longitude",

                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0.w, top: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextStyle(
                      text: "27.8552",

                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextStyle(
                      text: "85.4455",

                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h),
          CustomButton(
            buttonText: "SET",
            onPressed: () {
              Get.to(() => MealList());
            },
            height: 40.h,
            width: 200.w,
            backgroundColor: Colors.red.shade800,
          ),
        ],
      ),
    );
  }
}
