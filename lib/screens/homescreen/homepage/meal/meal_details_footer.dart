import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealDetailsFooter extends StatelessWidget {
  const MealDetailsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.teal[900],
                    side: BorderSide(color: Colors.teal[900]!),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Text("Cancel"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(icon: Icon(Icons.add), onPressed: () {}),
                    ],
                  ),
                ),
                /* ElevatedButton(
                  onPressed: () {
                   
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[900],
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: CustomTextStyle(
                    text: "Add to Order",
                    color: Colors.white,
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}
