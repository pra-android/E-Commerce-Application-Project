import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 400.h,
                    width: Get.context!.width,
                    decoration: BoxDecoration(color: const Color(0xFFFAF3E7)),
                    child: Center(
                      child: Image.asset(
                        "assets/pizza.png",
                        height: 300.h,
                        width: 350.w,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 20.0,
                    left: 20.0,
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                        radius: 19.r,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.0,
                    right: 20.0,

                    child: FaIcon(FontAwesomeIcons.heart),
                  ),
                  Positioned(
                    left: 20.w,
                    bottom: 30.h,

                    child: CustomTextStyle(
                      text: "Family Pack",
                      color: Colors.black,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Positioned(
                    left: 20.w,
                    bottom: 15.h,

                    child: CustomTextStyle(
                      text: "\$44.90",
                      color: Colors.black,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              MealDetailsBody(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: SizedBox(
          width: double.infinity,
          height: 50.h,
          child: ElevatedButton(
            onPressed: () {
              // Add to cart logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Text(
              "Add to Cart",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
