import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OrderHistoryBody extends StatelessWidget {
  const OrderHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 36.h,
              width: Get.context!.width,
              decoration: BoxDecoration(color: Colors.grey.shade800),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ordered On: 2025/22/03',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 4,
              margin: EdgeInsets.only(bottom: 16.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email: bhattaraipravin123@gmail.com',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    Text(
                      'Total Amount: Rs. 5000',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Items List
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            'Rice - Rs.5000 x 2 = Rs. 10000',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Text(
                          "Delivery Charge- Rs. 100",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Chip(
                          label: Text("Cash On Delivery"),
                          backgroundColor: Colors.blue[50],
                        ),
                        Chip(
                          label: Text(
                            "Status: Delivered",
                            style: TextStyle(
                              color:
                                  "Delivered" == 'Delivered'
                                      ? Colors.green
                                      : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          backgroundColor: Colors.blue[50],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
