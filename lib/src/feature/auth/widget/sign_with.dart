import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignWith extends StatelessWidget {
  void Function()? inkWillFacebook;
  void Function()? inkWillgoogle;
  SignWith(
      {required this.inkWillFacebook, required this.inkWillgoogle, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        IconButton(
            onPressed: inkWillFacebook,
            icon: Icon(
              Icons.facebook,
              color: Colors.blue,
              size: 35.sp,
            )),
        SizedBox(width: 40.w),
        InkWell(
          onTap: inkWillgoogle,
          child: Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: SvgPicture.asset(
              'assets/svg/Google.svg',
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
