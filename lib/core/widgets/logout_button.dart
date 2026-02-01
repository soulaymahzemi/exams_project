import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../them/color.dart';
import '../them/text_style.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const LogoutButton({
    super.key,
    required this.onPressed,
    this.label = 'Logout',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(Icons.logout, color: white),
        label: Text(
          label,
          style: bodyTextStyle.copyWith(
            color: white,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          padding: EdgeInsets.symmetric(vertical: 14.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
    );
  }
}
