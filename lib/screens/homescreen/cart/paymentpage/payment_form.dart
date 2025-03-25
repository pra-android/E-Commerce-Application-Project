import 'package:ecommerce_application/extras/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../extras/widgets/custom_text_style.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            child: Container(
              width: Get.context!.width,
              height: 40,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Text(
                  "Payment Method",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.all(7.w),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                hintText: "98123XXXX",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 5.h),
            child: Container(
              width: Get.context!.width,
              height: 40,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Text(
                  "Payment Method",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Container(
              height: 70.h,
              width: Get.context!.width,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade700, width: 0.5),
                  top: BorderSide(color: Colors.grey.shade700, width: 0.5),
                  left: BorderSide(color: Colors.grey.shade700, width: 0.5),
                  right: BorderSide(color: Colors.grey.shade700, width: 0.5),
                ),
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.w),
                        child: Image.asset(ImageConstant.cashOnDeliveryImage),
                      ),
                      CustomTextStyle(
                        text: "Cash On Delivery",
                        color: Colors.black,
                        fontSize: 15.sp,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 35,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
