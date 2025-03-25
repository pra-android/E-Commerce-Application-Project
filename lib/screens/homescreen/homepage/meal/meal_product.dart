import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MealProduct extends StatelessWidget {
  const MealProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextStyle(
            text: "Pizza",
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(height: 15.h);
          },
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 5,

          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 14.h),
              child: InkWell(
                onTap: () {
                  Get.to(() => MealDetails());
                },
                child: Container(
                  height: 300.h,
                  width: Get.context!.width - 100,
                  decoration: BoxDecoration(color: Color(0xFFFAF3E7)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/pizza.png",
                            height: 230.h,
                            width: Get.context!.width - 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: CustomTextStyle(
                          text: "Mad Monday",
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: CustomTextStyle(
                          text: "Whole Chicken + Free Salad",
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: CustomTextStyle(
                          text: "Rs 500",
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
