import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.keyboardType,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: textFiledTextStyle,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: hintTextStyle.copyWith(color: empty),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: empty.withOpacity(0.5)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: secondary, width: 2.w),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: red),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: red, width: 2.w),
        ),
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
