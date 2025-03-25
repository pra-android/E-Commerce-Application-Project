import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealDetailsBody extends StatelessWidget {
  const MealDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
