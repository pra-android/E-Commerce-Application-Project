import 'package:ecommerce_application/screens/homescreen/cart/paymentpage/payment_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../extras/widgets/custom_text_style.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: CustomTextStyle(
          text: "Your order",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: CustomTextStyle(text: "PICK UP FROM")),
          Center(
            child: CustomTextStyle(
              text: "Camberwall",
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w, top: 15.h),
            child: CustomTextStyle(
              text: "Order Summary",
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12.w, top: 15.h),
                child: Column(
                  children: [
                    CustomTextStyle(
                      text: "Subtotal:",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    CustomTextStyle(
                      text: "Delivery Fee:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextStyle(
                      text: "Total:",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, top: 15.h),
                    child: Column(
                      children: [
                        CustomTextStyle(
                          text: "Rs 80",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        CustomTextStyle(
                          text: "Rs 50",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTextStyle(
                          text: "Rs 130",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
          PaymentForm(),
        ],
      ),
    );
  }
}
