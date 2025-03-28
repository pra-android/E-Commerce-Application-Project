import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../extras/constants/bottom_sheet_constant.dart';

class CartCustomizationSettings extends StatelessWidget {
  const CartCustomizationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextStyle(text: "Selected Store", fontSize: 20.sp),
                CustomTextStyle(
                  text: "• Delivery",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            InkWell(
              onTap: () {
                BottomSheetConstant.showOrderModal(context);
              },
              child: CustomTextStyle(
                text: "Change",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.only(left: 8.w, top: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextStyle(
                text: "Wyoming",
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              CustomTextStyle(
                text:
                    "Wyoming Shopping Centre,Wyoming ,cnr Pacific Hwy & Kinarra Ave NSW 2250",
                fontWeight: FontWeight.w300,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
