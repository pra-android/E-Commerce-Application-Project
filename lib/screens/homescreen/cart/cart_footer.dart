import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/cart/paymentpage/payment_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartFooter extends StatefulWidget {
  const CartFooter({super.key});

  @override
  State<CartFooter> createState() => _CartFooterState();
}

class _CartFooterState extends State<CartFooter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),

              fixedSize: Size(Get.context!.width, 45.h),
            ),

            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextStyle(
                  text: "Total",
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: Colors.blueGrey.shade700,
                ),
                CustomTextStyle(
                  text: "\$ 336.00",
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: Colors.blueGrey.shade700,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 25.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: InkWell(
            onTap: () {
              Get.to(() => PaymentPage());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5.0),
              ),
              height: 50,

              child: Center(
                child: CustomTextStyle(
                  text: "Checkout",
                  color: Colors.white,

                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
