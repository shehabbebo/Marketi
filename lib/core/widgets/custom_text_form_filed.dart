import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.hintText,
    this.onSaved,
    this.onChange,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.prefixIcon,
    required this.validator,
    this.controller,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.errorBorder,
    this.focusErrorBorder,
  });

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusErrorBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final Function(String?) validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: 347.w,
      height: 48.h,
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        onSaved: onSaved,
        decoration: InputDecoration(
            isDense: true,
            contentPadding: contentPadding ??
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
                fontWeight: FontWeight.normal),
            enabledBorder: enabledBorder ?? borderCustom(),
            focusedBorder:
                focusedBorder ?? borderCustom(Colors.lightBlue.shade100),
            errorBorder: errorBorder ?? borderCustom(Colors.red),
            focusedErrorBorder: focusErrorBorder ?? borderCustom(Colors.red),
            errorStyle: TextStyle(fontSize: 0.01)),
        validator: (value) {
          return validator(value);
        },
        obscureText: isObscureText ?? false,
      ),
    );
  }

  OutlineInputBorder borderCustom([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? Color(0xffB2CCFF),
        width: 1.5,
      ),
    );
  }
}
