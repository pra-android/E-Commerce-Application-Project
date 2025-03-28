import 'package:ecommerce_application/screens/homescreen/cart/cart_customization_settings.dart';
import 'package:ecommerce_application/screens/homescreen/cart/cart_list.dart';
import 'package:ecommerce_application/screens/homescreen/cart/cart_footer.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CartCustomizationSettings(), CartList(), CartFooter()],
    );
  }
}
