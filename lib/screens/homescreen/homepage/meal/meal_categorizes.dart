import 'package:ecommerce_application/extras/constants/food_categorized_constant.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/option_delivery_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealCategorizes extends StatelessWidget {
  const MealCategorizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 30.h,

            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(width: 4);
              },

              scrollDirection: Axis.horizontal,
              itemCount: FoodCategorizedConstant.allCategorized.length,
              itemBuilder: (context, index) {
                return OptionDeliveryContainer(
                  borderColor: Colors.blueGrey.shade500,
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text:
                      FoodCategorizedConstant.allCategorized[index].keys.first,

                  height: 30.h,
                  width: 120.w,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
