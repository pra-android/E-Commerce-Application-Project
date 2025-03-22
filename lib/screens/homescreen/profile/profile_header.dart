import 'package:ecommerce_application/extras/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 38.r,
            backgroundImage: NetworkImage(
              "https://imgs.search.brave.com/rClQxS_UowbS2GHXX3WMSp_NDUpv01aR44Yf_mxtIyE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdG9y/eWJsb2stY2RuLnBo/b3Rvcm9vbS5jb20v/Zi8xOTE1NzYvMTE3/Nng4ODIvOWJkYzVk/ODQwMC9yb3VuZF9w/cm9maWxlX3BpY3R1/cmVfaGVyb19iZWZv/cmUud2VicA",
            ),
          ),
        ),
        SizedBox(height: 5.h),
        CustomTextStyle(
          text: "Prabin Bhattarai",
          color: Colors.black,
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
        ),
        CustomTextStyle(
          text: "bhattaraipravin123@gmail.com",
          color: Colors.black,
          fontSize: 12.sp,
        ),
      ],
    );
  }
}
