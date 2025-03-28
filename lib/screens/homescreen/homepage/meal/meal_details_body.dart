import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/option_delivery_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealDetailsBody extends StatelessWidget {
  final String? title;
  final String? descriptions;
  final List mealChoices;
  const MealDetailsBody({
    super.key,
    this.title,
    required this.mealChoices,
    this.descriptions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w, top: 8.h),
          child: CustomTextStyle(
            text: title!,
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.w, top: 4.h),
          child: OptionDeliveryContainer(
            borderColor: Colors.grey.shade300,
            backgroundColor: Colors.amber,
            textColor: Colors.white,
            fontWeight: FontWeight.w700,
            text: "\$ 125",
            height: 30.h,
            width: 70.w,
          ),
        ),

        mealChoices.isEmpty
            ? SizedBox.shrink()
            : Padding(
              padding: EdgeInsets.only(top: 8.w),
              child: SizedBox(
                height: 65.h,
                child: Center(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 8.w),
                    itemCount: mealChoices.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 60.h,
                            width: 140.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextStyle(
                                  text: mealChoices[index]['size'],
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomTextStyle(
                                  text: mealChoices[index]['price'],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),

        Padding(
          padding: EdgeInsets.all(8.w),
          child: CustomTextStyle(
            text: "Notes",
            fontSize: 18.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.w, right: 18.w),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Add a notes",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ), // Bottom border color
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ), // Bottom border color when focused
              ),
            ),
          ),
        ),
      ],
    );
  }
}
