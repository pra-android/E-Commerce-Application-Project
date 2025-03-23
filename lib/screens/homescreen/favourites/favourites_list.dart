import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouritesList extends StatelessWidget {
  const FavouritesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 2.w),
          child: Card(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90.h,
                  width: 120.w,
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Image.network(
                      "https://imgs.search.brave.com/QWE_THXsWb1sJDYRCjq099bjjMO8jq66dBNivH48S18/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvcmlw/ZS1tYW5nby13aXRo/LWxlYWYteGM2ZDdh/cWs0NGUzMjhnNy0y/LnBuZw",
                    ),
                  ),
                ),
                SizedBox(width: 6.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextStyle(
                        text: "Mango",
                        fontWeight: FontWeight.w600,
                        textOverflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      CustomTextStyle(
                        text: "Fruits and Vegetables",
                        textOverflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      CustomTextStyle(text: "Rs 80"),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
