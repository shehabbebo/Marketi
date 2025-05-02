// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:marketi/core/constant/colors.dart';
// import 'package:marketi/core/widgets/custom_bottom.dart';
// import 'package:marketi/features/auth/login/view/weight/custom_ather_login.dart';
// import 'package:marketi/features/auth/login/view/weight/email_password.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.white,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(height: 50.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 51.w),
//               child: Image.asset(
//                 'assets/images/Logo_Log_In.png',
//                 height: 232.h,
//                 width: 272.w,
//               ),
//             ),
//             EmailPassword(),
//             Align(
//               alignment: Alignment.centerRight,
//               child: Padding(
//                 padding: EdgeInsets.only(top: 4.h, right: 18.w),
//                 child: InkWell(
//                   onTap: () {},
//                   child: Text(
//                     'Forgot password?',
//                     style: TextStyle(
//                       color: AppColor.primaryColor,
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 12.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.w),
//               child: CustomBottom(text: 'Log in', onPressed: () {}),
//             ),
//             SizedBox(height: 14.sp),
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'Or Continue with',
//                 style: TextStyle(
//                     fontSize: 12.sp,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xff51526C)),
//               ),
//             ),
//             SizedBox(height: 14.h),
//             CustomAtherLogin(),
//             SizedBox(height: 12.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Are you new in Marketi',
//                   style: TextStyle(
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.w500,
//                       color: Color(0xff51526C)),
//                 ),
//                 InkWell(
//                   child: Text(
//                     ' register?',
//                     style: TextStyle(
//                         fontSize: 12.sp,
//                         color: AppColor.primaryColor,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';
import 'package:marketi/features/auth/login/data/model/login_request_body.dart';
import 'package:marketi/features/auth/login/view/weight/LoginBlocListener.dart';
import 'package:marketi/features/auth/login/view/weight/custom_ather_login.dart';
import 'package:marketi/features/auth/login/view/weight/email_password.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit.dart';
import 'package:marketi/features/screen_task/forgetpassword.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Image.asset(
                  'assets/images/Logo_Log_In.png',
                  height: 232.h,
                  width: 272.w,
                ),
                SizedBox(
                  height: 22.h,
                ),

                EmailAndPassword(),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.forgotPassword);
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: const Color(0xff3F80FF),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ), //Forgot Password Bottom
                SizedBox(
                  height: 12.h,
                ),
                CustomBottom(
                  text: 'Log In',
                  onPressed: () {
                    print(context.read<LoginCubit>().emailController.text);
                    print(context.read<LoginCubit>().passwordController.text);
                    print('object');
                    validateThenDoLogin(context);
                  },
                ),
                SizedBox(
                  height: 14.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Or Continue With',
                    style: TextStyle(
                        color: const Color(0xff51526C),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                const CustomOtherLogin(),

                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Align(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Are you new in Marketi',
                                style: TextStyle(
                                  color: Color(0xFF51526B),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: Color(0xFFDCDDDF),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signup);
                        },
                        child: Text(
                          'register?',
                          style: TextStyle(
                            color: Color(0xFF3F80FF),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                          ),
                        ),
                      ),
                      LoginBlocListener(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
