import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/colors.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';
import 'package:marketi/features/auth/login/view/weight/custom_ather_login.dart';
import 'package:marketi/features/auth/login/view/weight/email_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 51.w),
              child: Image.asset(
                'assets/images/Logo_Log_In.png',
                height: 232.h,
                width: 272.w,
              ),
            ),
            EmailPassword(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(top: 4.h, right: 18.w),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomBottom(text: 'Log in', onPressed: () {}),
            ),
            SizedBox(height: 14.sp),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Or Continue with',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff51526C)),
              ),
            ),
            SizedBox(height: 14.h),
            CustomAtherLogin(),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you new in Marketi',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff51526C)),
                ),
                InkWell(
                  child: Text(
                    ' register?',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
