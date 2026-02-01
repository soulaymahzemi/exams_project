import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:esame/core/them/color.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFav;
  final VoidCallback onTap;
  final bool isSmall;

  const FavoriteButton({
    super.key,
    required this.isFav,
    required this.onTap,
    this.isSmall = true,
  });

  @override
  Widget build(BuildContext context) {
    if (isSmall) {
      return GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 15.r,
          backgroundColor: white.withOpacity(0.9),
          child: Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            color: isFav ? red : empty,
            size: 18.sp,
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isFav ? Icons.favorite : Icons.favorite_border,
        color: isFav ? red : empty,
        size: 20.sp,
      ),
    );
  }
}
