import 'package:ecommerce_application/screens/homescreen/cart/cart_body.dart';
import 'package:ecommerce_application/screens/homescreen/cart/cart_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../extras/widgets/custom_text_style.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 75.h,
            width: Get.context!.width,
            decoration: BoxDecoration(color: Colors.blue.shade500),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 28.h),
                child: CustomTextStyle(
                  text: "Cart Items",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: CartBody())),
          CartFooter(),
        ],
      ),
    );
  }
}
