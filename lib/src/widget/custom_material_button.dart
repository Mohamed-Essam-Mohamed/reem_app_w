// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reem_app/src/utils/app_colors.dart';
import 'package:reem_app/src/utils/app_text_style.dart';

class CustomMaterialButton extends StatelessWidget {
  final String title;
  final Function press;
  CustomMaterialButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        press();
      },
      color: AppColors.purple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(113.r)),
      minWidth: 398.w,
      child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Text(title,
            style: AppTextStyle.textStyle24.copyWith(color: AppColors.white)),
      ),
    );
  }
}
