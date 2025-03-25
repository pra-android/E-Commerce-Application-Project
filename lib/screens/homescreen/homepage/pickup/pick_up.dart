import 'package:ecommerce_application/screens/homescreen/homepage/pickup/pick_up_list.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/pickup/pickup_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PickUp extends StatelessWidget {
  const PickUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              radius: 27.r,
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.arrow_back_ios_outlined, size: 18.sp),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [PickupHeader(), PickUpList()]),
      ),
    );
  }
}
