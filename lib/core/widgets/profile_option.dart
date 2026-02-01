import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../them/color.dart';
import '../them/text_style.dart';

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final bool isLast;

  const ProfileOption({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: secondary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(icon, color: secondary, size: 22.sp),
          ),
          title: Text(
            title,
            style: bodyTextStyle.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: black,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16.sp,
            color: empty,
          ),
        ),
      ),
    );
  }
}

