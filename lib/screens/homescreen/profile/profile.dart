import 'package:ecommerce_application/screens/homescreen/profile/profile_header.dart';
import 'package:ecommerce_application/screens/homescreen/profile/profile_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 8.h),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            height: Get.context!.height - kBottomNavigationBarHeight - 120,
            width: Get.context!.width,
            child: Column(children: [ProfileHeader(), ProfileListTile()]),
          ),
        ),
      ],
    );
  }
}
