import 'package:ecommerce_application/screens/homescreen/cart/cart.dart';
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Stack(
                children: [
                  Positioned(top: -3.h, right: 3.w, child: Text("2")),
                  IconButton(
                    onPressed: () {
                      Get.to(() => Cart());
                    },
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                ],
              ),
            ),
          ),
        ],
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
        child: Column(
          children: [
            MealCategorizes(),
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 8.h),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade50,
                  hintText: "Search for items",
                  prefixIcon: Icon(Icons.search_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r),
                    borderSide: BorderSide(color: Colors.blueGrey.shade500),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey.shade500),
                    borderRadius: BorderRadius.circular(14.r),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey.shade500),
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 2.w, top: 8.h),
              child: MealProduct(),
            ),
          ],
        ),
      ),
    );
  }
}
