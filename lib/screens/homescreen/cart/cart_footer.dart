import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/cart/paymentpage/payment_page.dart';
import 'package:flutter/material.dart';
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
