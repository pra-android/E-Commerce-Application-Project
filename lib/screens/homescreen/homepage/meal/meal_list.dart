import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_categorizes.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealList extends StatelessWidget {
  const MealList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MealCategorizes(),
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 8.h),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Search for items",
                prefixIcon: Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(color: Colors.blueGrey.shade500),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade500),
                  borderRadius: BorderRadius.circular(14.r),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey.shade500),
                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 2.w, top: 8.h),
            child: MealProduct(),
          ),
        ],
      ),
    );
  }
}
