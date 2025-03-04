import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/widgets/custom_text_form_filed.dart';

class EmailPassword extends StatelessWidget {
  const EmailPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextFormFiled(
          hintText: 'Username or email',
          validator: (value) {},
          prefixIcon: Icon(
            Icons.email_outlined,
            size: 14.sp,
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        CustomTextFormFiled(
            prefixIcon: Icon(Icons.lock_outline_rounded),
            hintText: 'Password',
            validator: (value) {})
      ],
    ));
  }
}
