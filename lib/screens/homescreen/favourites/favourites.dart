import 'package:ecommerce_application/screens/homescreen/favourites/favourites_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../extras/widgets/custom_text_style.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75.h,
          width: Get.context!.width,
          decoration: BoxDecoration(color: Colors.blue.shade500),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 28.h),
              child: CustomTextStyle(
                text: "Favourites",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
        FavouritesList(),
      ],
    );
  }
}
