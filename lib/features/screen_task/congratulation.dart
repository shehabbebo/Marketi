import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/constant/colors.dart';
import 'package:marketi/core/widgets/arrow_back.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';
import 'package:marketi/core/widgets/custom_text_form_filed.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({super.key});

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ArrowBack(),
                SizedBox(width: 13.w),
                Image.asset(
                  'assets/images/Illustration_Congratulations.png',
                  height: 350.h,
                  width: 250.w,
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Center(
              child: Text('Congratulations',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.darkBlue,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Center(
              child: Text(
                  'You have updated the password. please \nlogin again with your latest password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.darkBlue,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                  )),
            ),
            SizedBox(height: 24.h),
            CustomBottom(text: ' Login ', onPressed: () {}),
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      )),
    );
  }
}
