import 'package:ecommerce_application/extras/constants/widget_constant.dart';
import 'package:ecommerce_application/extras/widgets/custom_navigation_bar.dart';
import 'package:ecommerce_application/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../extras/widgets/custom_text_style.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,

        title: Text(
          "PHAT CHICKEN",
          style: GoogleFonts.aclonica(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: Column(
          children: [
            Container(
              height: 200.h,
              width: Get.context!.width,
              decoration: BoxDecoration(color: Colors.red.shade700),

              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: CircleAvatar(
                        radius: 16.r,
                        backgroundColor: Colors.red,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                            size: 12.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: CustomTextStyle(
                        text: "Prabin Bhattarai",
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        right: 8.w,
                        top: 12.h,
                      ),
                      child: Container(
                        height: 75.h,
                        width: Get.context!.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: WidgetConstant.listofscreens[ref.watch(bottomCounterProvider)],
      ),

      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
