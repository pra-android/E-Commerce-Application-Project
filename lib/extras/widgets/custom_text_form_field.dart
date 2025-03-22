import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  const CustomTextFormField({super.key, this.hintText, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.blueGrey.shade50,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black, fontSize: 14.sp),
        prefixIcon: Icon(prefixIcon, color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.blueGrey.shade50),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.blueGrey.shade50),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.blueGrey.shade50),
        ),
      ),
    );
  }
}
