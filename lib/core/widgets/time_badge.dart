import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_style.dart';

class TimeBadge extends StatelessWidget {
  final String time;
  const TimeBadge({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.timer_outlined, size: 14.sp, color: empty),
        SizedBox(width: 4.w),
        Text(time, style: bodyTextStyle.copyWith(color: empty, fontSize: 11.sp)),
      ],
    );
  }
}
