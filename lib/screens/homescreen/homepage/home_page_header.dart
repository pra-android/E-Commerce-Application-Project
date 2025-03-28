import 'package:ecommerce_application/extras/constants/image_constant.dart';
import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({super.key});

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 6.h, left: 20.w),
            child: Text(
              "Crispy, Juicy, Phat",
              style: GoogleFonts.aclonica(
                textStyle: TextStyle(
                  color: Colors.brown,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.h, left: 20.w),
          child: Text(
            "Taste the Crunch",
            style: GoogleFonts.aclonica(
              textStyle: TextStyle(
                color: Colors.brown,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 8.h),
          child: Container(
            height: 200.h,
            width: Get.context!.width,
            decoration: BoxDecoration(
              color: Colors.yellow.shade50,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                Image.asset(
                  ImageConstant.homePageImage,
                  fit: BoxFit.cover,
                  height: 180.h,
                  width: 300.w,
                ),
                CustomTextStyle(
                  text: "🍔Get the food quickly and easily🍔",
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 15.h),
        /* Padding(
          padding: EdgeInsets.all(8.w),
          child: CustomButton(
            buttonText: "ORDER NOW",
            onPressed: () {
              showModalBottomSheetUI(context);
            },
            backgroundColor: Colors.red.shade700,
            height: 48.h,
            width: 350.w,
          ),
        ),
        SizedBox(height: 5.h),
        Padding(
          padding: EdgeInsets.all(8.w),
          child: CustomButton(
            buttonText: "GET CATERING",
            onPressed: () {
              showModalBottomSheetUI(context);
            },
            backgroundColor: Colors.blue,
            height: 48.h,
            width: 350.w,
          ),
        ),
      ],
    );
  }

  void showModalBottomSheetUI(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        int selectedIndex = 0;
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                selectedIndex = index;
                                setState(() {});
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: OptionDeliveryContainer(
                                  borderColor: Colors.grey.shade300,
                                  backgroundColor:
                                      selectedIndex == index
                                          ? Colors.red.shade800
                                          : Colors.white,
                                  height: 30.h,
                                  width: 80.w,
                                  textColor:
                                      selectedIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                  text: OrderConstant.orderConstant[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    height: 80.h,
                    width: Get.context!.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextStyle(
                                    text: "Gosford",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomTextStyle(
                                    text: "Imperial CentreGosford 171 Mann St",
                                    fontSize: 14.sp,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => PickUp());
                              },
                              child: CustomTextStyle(
                                text: "Change",
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                      top: 20.0,
                    ),
                    child: CustomButton(
                      buttonText: "CONFIRM",
                      onPressed: () {
                        Navigator.pop(context);
                        if (selectedIndex == 0) {
                          Get.to(() => MealList());
                        } else if (selectedIndex == 1) {
                          Get.to(() => Delivery());
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please select an option!")),
                          );
                        }
                      },
                      height: 45.h,
                      width: 350.w,
                      backgroundColor: Colors.red.shade800,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );*/
      ],
    );
  }
}
