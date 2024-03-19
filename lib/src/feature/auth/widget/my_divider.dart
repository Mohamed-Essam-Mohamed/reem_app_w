import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reem_app/src/utils/app_text_style.dart';

class MyDivider extends StatelessWidget {
  String title;
  MyDivider({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          thickness: 2,
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Text(
            title,
            style: AppTextStyle.textStyle18,
          ),
        ),
        const Expanded(
            child: Divider(
          thickness: 2,
        ))
      ],
    );
  }
}
