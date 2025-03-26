import 'package:ecommerce_application/extras/constants/food_categorized_constant.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/meal/meal_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MealProduct extends StatelessWidget {
  const MealProduct({super.key});
  final value = 4;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Wrap in SingleChildScrollView to avoid unbounded height error
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true, // Ensures it takes only required space
            physics:
                NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
            itemCount: FoodCategorizedConstant.allCategorized.length,
            itemBuilder: (context, index) {
              var category =
                  FoodCategorizedConstant.allCategorized[index].keys.first;
              var items =
                  FoodCategorizedConstant.allCategorized[index][category];

              if (items is List && items!.isNotEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextStyle(
                        text: category,
                        fontWeight: FontWeight.w600,
                        fontSize: 19.sp,
                      ),
                    ),
                    items.length >= 4
                        ? GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: items.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.7,
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.w,
                                mainAxisSpacing: 10.h,
                              ),
                          itemBuilder: (context, gridIndex) {
                            var item = items[gridIndex]; // Ensure this is a Map
                            return InkWell(
                              onTap: () {
                                Get.to(
                                  () => MealDetails(
                                    title: item['title'] ?? "No Title",
                                    imageUrl: item['imageUrl'] ?? "",
                                    descriptions: item['descriptions'] ?? "",
                                    price: item['price'] ?? "N/A",
                                    mealChoices: item['choices'],
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFAF3E7),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        item['imageUrl'] ?? "",
                                        height: 150.h,
                                        width: 220.w,
                                        fit: BoxFit.cover,
                                      ),
                                      CustomTextStyle(
                                        text: item['title'] ?? "No Title",
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      CustomTextStyle(
                                        text: item['descriptions'] ?? "",
                                        textOverflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      CustomTextStyle(
                                        text: item['price'] ?? "N/A",
                                        color: Colors.amber,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                        : ListView.separated(
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 15.h);
                          },
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: items.length,
                          itemBuilder: (context, listIndex) {
                            var item = items[listIndex]; // Ensure this is a Map
                            return Padding(
                              padding: EdgeInsets.only(
                                left: 12.w,
                                right: 12.w,
                                top: 14.h,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Get.to(
                                    () => MealDetails(
                                      title: item['title'] ?? "No Title",
                                      imageUrl: item['imageUrl'] ?? "",
                                      descriptions: item['descriptions'] ?? "",
                                      price: item['price'] ?? "N/A",
                                      mealChoices: item['choices'],
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 300.h,
                                  width: Get.context!.width - 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFAF3E7),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            item['imageUrl'] ?? "",
                                            height: 230.h,
                                            width: Get.context!.width - 150,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16.w),
                                        child: CustomTextStyle(
                                          text: item['title'] ?? "No Title",
                                          color: Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16.w),
                                        child: CustomTextStyle(
                                          text: item['descriptions'] ?? "",
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w300,
                                          textOverflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 16.w),
                                        child: CustomTextStyle(
                                          text: item['price'] ?? "N/A",
                                          color: Colors.amber,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                  ],
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}
