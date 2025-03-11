import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/constant/colors.dart';
import 'package:marketi/core/widgets/arrow_back.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';
import 'package:marketi/core/widgets/custom_text_form_filed.dart';
import 'package:marketi/features/auth/login/view/weight/custom_ather_login.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
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
                Text(
                  'Verification Code',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.darkBlue,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/Illustration_Create_New_Password.png',
              height: 350.h,
              width: 300.w,
            ),
            SizedBox(height: 12.h),
            Center(
              child: Text('New password must be\n different from last password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.darkBlue,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            const Text(
              'Password',
              style: TextStyle(
                color: Color(0xFF001640),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomTextFormFiled(
                hintText: 'Password',
                prefixIcon: const Icon(
                  Icons.lock_outline_rounded,
                  size: 18,
                ),
                validator: (value) {
                  //        if (value == null ||
                  //     value.isEmpty ||
                  //     !AppRegex.isPasswordValid(value)) {
                  //   return 'please enter a valid password';
                  // }
                }),
            const Text(
              'Confirm Password',
              style: TextStyle(
                color: Color(0xFF001640),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomTextFormFiled(
              hintText: 'Confirm Password',
              prefixIcon: const Icon(
                Icons.lock_outline_rounded,
                size: 18,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter a valid password';
                }
              },
            ),
            SizedBox(height: 16.h),
            CustomBottom(text: 'Save Password', onPressed: () {}),
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
