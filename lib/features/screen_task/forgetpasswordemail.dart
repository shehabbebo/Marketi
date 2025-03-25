import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/constant/colors.dart';
import 'package:marketi/core/widgets/arrow_back.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';
import 'package:marketi/core/widgets/custom_text_form_filed.dart';

class ForgetpasswordEmail extends StatefulWidget {
  const ForgetpasswordEmail({super.key});

  @override
  State<ForgetpasswordEmail> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<ForgetpasswordEmail> {
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
                  'assets/images/Illustration_Forgot_Password_With_Email.png',
                  height: 350.h,
                  width: 250.w,
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Center(
              child: Text(
                  'Please enter your Email address to \nreceive a verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.darkBlue,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            const Text(
              'Email',
              style: TextStyle(
                color: Color(0xFF001640),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomTextFormFiled(
                hintText: 'You@gmail.com',
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(top: 12, left: 16, bottom: 16),
                  child: FaIcon(
                    FontAwesomeIcons.mobileScreenButton,
                    size: 16,
                  ),
                ),
                validator: (value) {
                  //        if (value == null ||
                  //     value.isEmpty ||
                  //     !AppRegex.isPhoneNumberValid(value)) {
                  //   return 'please enter a valid phone number';
                  // }
                }),
            SizedBox(height: 16.h),
            CustomBottom(text: 'Send Code ', onPressed: () {}),
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
