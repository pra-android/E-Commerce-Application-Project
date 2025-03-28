import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePageList extends StatelessWidget {
  const HomePageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(height: 5.h);
          },
          shrinkWrap: true,
          itemCount: 3,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 300.h,
                width: Get.context!.width,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.asset(
                        "assets/offers.avif",
                        height: 180.h,
                        width: Get.context!.width - 25,
                        fit: BoxFit.fill,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextStyle(
                        text:
                            "5 Must-Try Dishes That Will Make You Fall in Love with Our Menu",
                        textOverflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 5.h),
                      child: CustomTextStyle(
                        text:
                            "Discover the signature dishes that keep our guests coming back for more, each crafted with love and the finest ingredients. From classic favorites to innovative creations, every dish is a masterpiece. Savor the perfect balance of flavors and textures, prepared with passion and precision. Enjoy a dining experience that lingers long after the last bite, leaving you craving more.",
                        textOverflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
