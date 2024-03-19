// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reem_app/src/utils/app_colors.dart';
import 'package:reem_app/src/utils/app_text_style.dart';

typedef Validator = String? Function(String?);

class CustomTextFormField extends StatefulWidget {
  String label;
  TextInputType keyboardType;
  bool obscureText;
  bool isPhone;
  bool isPassword;
  TextEditingController controller;
  Validator myValidator;

  CustomTextFormField(
      {required this.label,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.isPhone = false,
      this.isPassword = false,
      required this.controller,
      required this.myValidator});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: TextFormField(
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          // fillColor: Colors.grey.shade100,
          // filled: true,
          prefixIcon: widget.isPhone
              ? Container(
                  color: Colors.transparent,
                  width: 85.w,
                  height: 25,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/image/egypt_flag_icon.png',
                          width: 25.w,
                          height: 25.h,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '+20',
                          style: TextStyle(fontSize: 20.sp),
                        )
                      ],
                    ),
                  ),
                )
              : null,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    widget.obscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Color(0xff454A4F),
                    size: 24.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                )
              : null,
          labelText: widget.label,
          labelStyle: AppTextStyle.textStyle18
              .copyWith(fontSize: 20.sp, color: AppColors.black),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.sp, vertical: 18.sp),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(113.r),
            borderSide: BorderSide(
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(113.r),
            borderSide: BorderSide(
              color: Color(0xff1D1B20),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(113.r),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        validator: widget.myValidator,
      ),
    );
  }
}
