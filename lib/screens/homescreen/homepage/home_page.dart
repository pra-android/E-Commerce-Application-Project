import 'package:ecommerce_application/screens/homescreen/homepage/home_page_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [HomePageHeader()],
      ),
    );
  }
}
