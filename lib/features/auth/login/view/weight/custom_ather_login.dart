import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAtherLogin extends StatelessWidget {
  const CustomAtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.r),
            ),
          ),
          child: Image.asset('assets/images/Google_Icon.png'),
        ),
        SizedBox(
          width: 14.w,
        ),
        Container(
          width: 40.w,
          height: 40.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.r),
            ),
          ),
          child: Image.asset('assets/images/Facebok_Icon.png'),
        ),
        SizedBox(
          width: 14.w,
        ),
        Container(
          width: 40.w,
          height: 40.h,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.r),
            ),
          ),
          child: Image.asset('assets/images/Apple_Icon.png'),
        ),
      ],
    );
  }
}
