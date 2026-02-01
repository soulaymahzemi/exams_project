import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double borderRadius;
  final Widget? icon;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.borderRadius = 15,
    this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w,
      height: (height ?? 50).h,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius.r),
        onTap: isLoading ? null : onPressed,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius.r),
            ),
          ),
          child: isLoading
              ? const CircularProgressIndicator(color: white)
              : Center(
                  child: icon == null
                      ? Text(
                          text,
                          style: buttonTextStyle,
                        )
                      : Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            icon!,
                            SizedBox(width: 8.w),
                            Text(
                              text,
                              style: buttonTextStyle,
                            ),
                          ],
                        ),
                ),
        ),
      ),
    );
  }
}
