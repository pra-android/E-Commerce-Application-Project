import 'dart:math';
import 'package:ecommerce_application/extras/constants/order_constant.dart';
import 'package:ecommerce_application/extras/widgets/custom_button.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/delivery/delivery.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_list.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_product.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/option_delivery_container.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/pickup/pick_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({super.key});

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
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
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        int selectedIndex = 0;
        return StatefulBuilder(
          builder: (context, setState) {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                selectedIndex = index;
                                setState(() {});
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: OptionDeliveryContainer(
                                  borderColor: Colors.grey.shade300,
                                  backgroundColor:
                                      selectedIndex == index
                                          ? Colors.red.shade800
                                          : Colors.white,
                                  height: 30.h,
                                  width: 80.w,
                                  textColor:
                                      selectedIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                  text: OrderConstant.orderConstant[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    height: 80.h,
                    width: Get.context!.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextStyle(
                                    text: "Gosford",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomTextStyle(
                                    text: "Imperial CentreGosford 171 Mann St",
                                    fontSize: 14.sp,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => PickUp());
                              },
                              child: CustomTextStyle(
                                text: "Change",
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                      top: 20.0,
                    ),
                    child: CustomButton(
                      buttonText: "CONFIRM",
                      onPressed: () {
                        if (selectedIndex == 0) {
                          Get.to(() => MealList());
                        } else if (selectedIndex == 1) {
                          Get.to(() => Delivery());
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please select an option!")),
                          );
                        }
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
      },
    );
  }
}
