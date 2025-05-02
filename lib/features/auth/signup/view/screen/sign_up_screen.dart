// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:marketi/core/constant/colors.dart';
// import 'package:marketi/core/widgets/arrow_back.dart';
// import 'package:marketi/core/widgets/custom_bottom.dart';
// import 'package:marketi/core/widgets/custom_text_form_filed.dart';
// import 'package:marketi/features/auth/login/view/weight/custom_ather_login.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ArrowBack(),
//                 SizedBox(width: 13.w),
//                 Image.asset(
//                   'assets/images/Logo_Sign_Up.png',
//                   height: 140.h,
//                   width: 160.w,
//                 ),
//               ],
//             ),
//             const Text(
//               'Your Name',
//               style: TextStyle(
//                   color: AppColor.darkBlue,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w600),
//             ),
//             CustomTextFormFiled(
//               hintText: 'Full name',
//               validator: (value) {},
//               prefixIcon: Padding(
//                 padding: EdgeInsets.only(
//                   top: 12,
//                   left: 14,
//                   bottom: 14,
//                 ),
//                 child: FaIcon(FontAwesomeIcons.userPen, size: 16),
//               ),
//             ),
//             const Text(
//               'Phone Number',
//               style: TextStyle(
//                 color: Color(0xFF001640),
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             CustomTextFormFiled(
//                 hintText: '0123456789',
//                 prefixIcon: const Padding(
//                   padding: EdgeInsets.only(top: 12, left: 16, bottom: 16),
//                   child: FaIcon(
//                     FontAwesomeIcons.mobileScreenButton,
//                     size: 16,
//                   ),
//                 ),
//                 validator: (value) {
//                   //        if (value == null ||
//                   //     value.isEmpty ||
//                   //     !AppRegex.isPhoneNumberValid(value)) {
//                   //   return 'please enter a valid phone number';
//                   // }
//                 }),
//             const Text(
//               'Email',
//               style: TextStyle(
//                 color: Color(0xFF001640),
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             CustomTextFormFiled(
//               hintText: 'Email',
//               prefixIcon: const Icon(
//                 Icons.email_outlined,
//                 size: 18,
//               ),
//               validator: (value) {
//                 //      if (value == null ||
//                 //     value.isEmpty ||
//                 //     !AppRegex.isEmailValid(value)) {
//                 //   return 'please enter a valid email';
//                 // }
//               },
//             ),
//             const Text(
//               'Password',
//               style: TextStyle(
//                 color: Color(0xFF001640),
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             CustomTextFormFiled(
//                 hintText: 'Password',
//                 prefixIcon: const Icon(
//                   Icons.lock_outline_rounded,
//                   size: 18,
//                 ),
//                 validator: (value) {
//                   //        if (value == null ||
//                   //     value.isEmpty ||
//                   //     !AppRegex.isPasswordValid(value)) {
//                   //   return 'please enter a valid password';
//                   // }
//                 }),
//             const Text(
//               'Confirm Password',
//               style: TextStyle(
//                 color: Color(0xFF001640),
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             CustomTextFormFiled(
//               hintText: 'Confirm Password',
//               prefixIcon: const Icon(
//                 Icons.lock_outline_rounded,
//                 size: 18,
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'please enter a valid password';
//                 }
//               },
//             ),
//             SizedBox(height: 12.h),
//             CustomBottom(text: 'Sign Up', onPressed: () {}),
//             SizedBox(height: 12.h),
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
//             SizedBox(height: 12.h),
//             CustomAtherLogin(),
//           ],
//         ),
//       )),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/helper/app_regex.dart';
import 'package:marketi/core/widgets/arrow_back.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';
import 'package:marketi/core/widgets/custom_text_form_filed.dart';
import 'package:marketi/features/auth/login/view/weight/custom_ather_login.dart';

import 'package:marketi/features/auth/signUp/view_model/cubit/signup_cubit.dart';
import 'package:marketi/features/auth/signup/view/weight/sign_up_bloc_listener.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: context.read<SignupCubit>().formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ArrowBack(),
                      const SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        'assets/images/Logo_Sign_Up.png',
                        height: 140.h,
                        width: 160.w,
                      ),
                    ],
                  ),
                  const Text(
                    'Your Name',
                    style: TextStyle(
                      color: Color(0xFF001640),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextFormFiled(
                    hintText: 'Full Name',
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 12, left: 14, bottom: 14),
                      child: FaIcon(
                        FontAwesomeIcons.userPen,
                        size: 16,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid name';
                      }
                    },
                  ),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Color(0xFF001640),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextFormFiled(
                      hintText: '0123456789',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 12, left: 16, bottom: 16),
                        child: FaIcon(
                          FontAwesomeIcons.mobileScreenButton,
                          size: 16,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isPhoneNumberValid(value)) {
                          return 'Please enter a valid phone number';
                        }
                      }),
                  const Text(
                    'Email',
                    style: TextStyle(
                      color: Color(0xFF001640),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextFormFiled(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 18,
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isEmailValid(value)) {
                        return 'Please enter a valid email';
                      }
                    },
                    controller: context.read<SignupCubit>().emailController,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xFF001640),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextFormFiled(
                      controller:
                          context.read<SignupCubit>().passwordController,
                      hintText: 'Password',
                      isObscureText: isPasswordObscureText,
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        size: 18,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPasswordObscureText = !isPasswordObscureText;
                          });
                        },
                        child: Icon(
                          isPasswordObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid password';
                        }
                      }),
                  const Text(
                    'Confirm Password',
                    style: TextStyle(
                      color: Color(0xFF001640),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextFormFiled(
                    controller: context
                        .read<SignupCubit>()
                        .passwordConfirmationController,
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      size: 18,
                    ),
                    isObscureText: isPasswordConfirmationObscureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordConfirmationObscureText =
                              !isPasswordConfirmationObscureText;
                        });
                      },
                      child: Icon(
                        isPasswordConfirmationObscureText
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomBottom(
                    text: 'Sign Up',
                    onPressed: () {
                      validateThenDoSignup(context);
                    },
                  ),
                  SizedBox(
                    height: 8.h,
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
                    height: 12.h,
                  ),
                  const CustomOtherLogin(),
                  SignupBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
