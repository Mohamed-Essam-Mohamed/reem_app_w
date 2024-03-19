// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reem_app/src/utils/app_colors.dart';
import 'package:reem_app/src/utils/app_text_style.dart';

class Sign extends StatelessWidget {
  String title1;
  String title2;
  Function press;
  Sign({required this.title1, required this.title2, required this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title1,
          style: AppTextStyle.textStyle18.copyWith(
            color: Color(0xff242424),
          ),
        ),
        TextButton(
          onPressed: () {
            press();
          },
          child: Text(
            title2,
            style: AppTextStyle.textStyle18.copyWith(
              color: AppColors.purple,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
