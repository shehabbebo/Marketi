// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:marketi/core/constant/colors.dart';
// import 'package:marketi/core/widgets/arrow_back.dart';

// class VerificationCodeE extends StatefulWidget {
//   const VerificationCodeE({super.key});

//   @override
//   State<VerificationCodeE> createState() => _VerificationCodeEState();
// }

// class _VerificationCodeEState extends State<VerificationCodeE> {
//   int _timerSeconds = 46;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 children: [
//                   ArrowBack(),
//                   SizedBox(width: 10.w),
//                   Text(
//                     'Verification Code',
//                     style: TextStyle(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                       color: AppColor.darkBlue,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 30.h),
//               Image.asset(
//                 'assets/images/Illustration_Verification_Code_With_Phone.png',
//                 height: 180.h,
//               ),
//               SizedBox(height: 20.h),
//               Text(
//                 'Please enter the 4 digit code sent to:',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: AppColor.darkBlue,
//                 ),
//               ),
//               Text(
//                 ' You@gmail.com',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: AppColor.primaryColor,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Pinput(
//                 length: 4,
//                 keyboardType: TextInputType.number,
//                 defaultPinTheme: PinTheme(
//                   width: 56.w,
//                   height: 56.h,
//                   textStyle: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.r),
//                     border: Border.all(color: AppColor.primaryColor),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30.h),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColor.primaryColor,
//                     padding: EdgeInsets.symmetric(vertical: 12.h),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.r),
//                     ),
//                   ),
//                   child: Text(
//                     'Verify Code',
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Text(
//                 '00:${_timerSeconds.toString().padLeft(2, '0')}',
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: AppColor.darkBlue,
//                 ),
//               ),
//               SizedBox(height: 12.h),
//               // TextButton(
//               //   onPressed: _timerSeconds == 0 ? () {} : null,
//               //   child: Text(
//               //     'Resend Code',
//               //     style: TextStyle(
//               //       fontSize: 14.sp,
//               //       color: _timerSeconds == 0
//               //           ? AppColor.primaryColor
//               //           : Colors.grey,
//               //     ),
//               //   ),
//               // ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Padding(
//                   padding: EdgeInsets.only(top: 4.h, right: 18.w),
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.pushNamed(context, '/forgetpasswordemail');
//                     },
//                     child: Text(
//                       '       Resend Code',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
