import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_details_body.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_details_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../extras/widgets/custom_flutter_toast.dart';

class MealDetails extends StatelessWidget {
  final String imageUrl;
  final String? descriptions;
  final String? title;
  final String price;
  final List mealChoices;
  const MealDetails({
    super.key,
    required this.imageUrl,
    this.title,
    this.descriptions,
    required this.price,
    required this.mealChoices,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 350.h,
                    width: Get.context!.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image.asset(
                      imageUrl,
                      height: 200.h,
                      width: 250.w,
                      fit: BoxFit.fill,
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
                ],
              ),
              MealDetailsBody(
                title: title,
                mealChoices: mealChoices,
                descriptions: descriptions,
              ),
              MealDetailsFooter(),
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
              CustomFlutterToast.showFlutterToast(
                "Items Added for Order",
                Color(0xFFFAF3E7),
                Colors.black,
              );
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
