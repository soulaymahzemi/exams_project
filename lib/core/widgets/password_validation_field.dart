import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_style.dart';

class PasswordValidationField extends StatelessWidget {
  final String password;

  const PasswordValidationField({
    Key? key,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildValidationRow('At least 6 characters', password.length >= 6),
        SizedBox(height: 8.h),
        _buildValidationRow('At least one uppercase letter', RegExp(r'[A-Z]').hasMatch(password)),
        SizedBox(height: 8.h),
        _buildValidationRow('At least one special character', RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)),
      ],
    );
  }

  Widget _buildValidationRow(String text, bool isValid) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.circle_outlined,
          color: isValid ? green : empty,
          size: 16.sp,
        ),
        SizedBox(width: 8.w),
        Text(
          text,
          style: bodyTextStyle.copyWith(
            color: isValid ? black : empty,
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }
}
