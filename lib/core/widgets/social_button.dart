import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esame/core/them/color.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const SocialButton({
    Key? key,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10.r,
              offset: Offset(0, 5.h),
            ),
          ],
          border: Border.all(color: empty.withOpacity(0.2)),
        ),
        padding: EdgeInsets.all(12.w),
        child: Image.asset(iconPath),
      ),
    );
  }
}
