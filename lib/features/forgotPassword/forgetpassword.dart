import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/constant/colors.dart';
import 'package:marketi/core/widgets/arrow_back.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';
import 'package:marketi/core/widgets/custom_text_form_filed.dart';
import 'package:marketi/features/auth/login/view/weight/custom_ather_login.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
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
                  'assets/images/Illustration_Forgot_Password_With_Phone.png',
                  height: 350.h,
                  width: 250.w,
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Center(
              child: Text(
                  'Please enter your phone number to \nreceive a verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.darkBlue,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            const Text(
              'Phone Number',
              style: TextStyle(
                color: Color(0xFF001640),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            CustomTextFormFiled(
                hintText: '0123456789',
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 4.h, right: 18.w),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/forgetpasswordemail');
                  },
                  child: Text(
                    'Try Another Way',
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
