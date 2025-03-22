import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
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
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: CircleAvatar(
                              backgroundColor: Colors.blue.shade200,
                              radius: 18.r,
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                size: 15.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 95.w),
                            child: CustomTextStyle(
                              text: "Profile",
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 90.h,
                left: 8.w,
                right: 8.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  height:
                      Get.context!.height - kBottomNavigationBarHeight - 120,
                  width: Get.context!.width,
                  child: Column(children: [ProfileHeader(), ProfileListTile()]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
