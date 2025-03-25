import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../meal/meal_list.dart';

class PickUpList extends StatelessWidget {
  const PickUpList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w, top: 20.h),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 18,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => MealList());
                },
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextStyle(
                        text: "Malvern",
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),
                      CustomTextStyle(
                        text: "215 Glenerive Md Malam",
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.red.shade800,
                    radius: 20.r,
                    child: CustomTextStyle(
                      text: "${index + 1}",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
