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
              separatorBuilder: (context, index) {
                return SizedBox(width: 4);
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return OptionDeliveryContainer(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text: "Pizza",
                  height: 30.h,
                  width: 70.w,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
