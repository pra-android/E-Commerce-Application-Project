import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_categorizes.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../extras/widgets/custom_text_style.dart';

class MealList extends StatelessWidget {
  const MealList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              radius: 26.r,
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.arrow_back_ios_outlined, size: 16.sp),
            ),
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            CustomTextStyle(
              text: "Malvern",
              fontWeight: FontWeight.w800,
              fontSize: 14.sp,
            ),
            CustomTextStyle(
              text: "215 Glenerive Md Malam",
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [MealCategorizes(), MealProduct()]),
      ),
    );
  }
}
