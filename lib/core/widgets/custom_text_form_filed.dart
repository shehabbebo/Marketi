import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key,
      this.contentPading,
      this.focusBorder,
      this.enableBorder,
      this.errorBorder,
      this.focusErrorBorder,
      this.inputTextStyle,
      required this.hintText,
      this.onSaved,
      this.onChange,
      this.isObscureText,
      this.suffixIcon,
      this.prefixIcon,
      this.backgroundColor,
      required this.validator,
      this.controller});
  final EdgeInsetsGeometry? contentPading;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusErrorBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Function(String?) validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 48.h,
      width: 331.w,
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        onSaved: onSaved,
        decoration: InputDecoration(
            isDense: true,
            contentPadding: contentPading ??
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            constraints: BoxConstraints(
              maxHeight: height * 0.0625,
              maxWidth: width,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xff929BAB),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
            enabledBorder: enableBorder ?? customBorder(),
            focusedBorder:
                focusBorder ?? customBorder(Colors.lightBlue.shade100),
            errorBorder: errorBorder ?? customBorder(Colors.red),
            errorStyle: TextStyle(fontSize: 12.sp),
            focusedErrorBorder: focusErrorBorder ?? customBorder(Colors.red)),
        validator: (value) {
          return validator(value);
        },
      ),
    );
  }

  OutlineInputBorder customBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: color ?? Color(0xffB2CCF),
          width: 1.5,
        ));
  }
}
