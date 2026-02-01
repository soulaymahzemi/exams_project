import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_style.dart';

class CategoryTag extends StatelessWidget {
  final String label;
  const CategoryTag({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        label,
        style: bodyTextStyle.copyWith(color: primary, fontSize: 10.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
