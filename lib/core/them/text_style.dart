import 'package:esame/core/them/color.dart';
import 'package:esame/core/them/text_size.dart';
import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';



const String fontFamily = 'SFUIText';

TextStyle titleTextStyle = TextStyle(
  fontSize: titleSize,
  fontWeight: FontWeight.w700,
  height: charHeight,
  color: primary,
);

TextStyle filterTitleStyle = TextStyle(
  fontSize: filterTitleSize,
  fontWeight: FontWeight.w700,
  height: charHeight,
  color: primary,
);

TextStyle subTitleTextStyle = TextStyle(
  fontSize: subTitleSize,
  fontWeight: FontWeight.w600,
  height: charHeight,
  color: black,
);

TextStyle appBarTextStyle = TextStyle(
  fontSize: appBarSize,
  fontWeight: FontWeight.w500,
  height: charHeight,
  color: black,
);

TextStyle bodyTextStyle = TextStyle(
  fontSize: bodyTextSize,
  fontWeight: FontWeight.w400,
  height: charHeight,
  color: black,
);

TextStyle parkingDescriptionTextStyle = TextStyle(
  fontSize: bodyTextSize,
  fontWeight: FontWeight.w400,
  height: charHeight,
  color: empty,
);

TextStyle parkingNameTextStyle = TextStyle(
  fontSize: 24.sp,
  fontWeight: FontWeight.w500,
  height: charHeight,
  color: primary,
);

TextStyle buttonTextStyle = TextStyle(
  fontSize: buttonTextSize,
  fontWeight: FontWeight.w700,
  height: charHeight,
  color: white,
);

TextStyle validationTextStyle = TextStyle(
  fontSize: bodyTextSize,
  fontWeight: FontWeight.w400,
  height: charHeight,
  color: red,
);

TextStyle hintTextStyle = TextStyle(
  fontSize: bodyTextSize,
  fontWeight: FontWeight.w400,
  height: charHeight,
  color: hint,
);


TextStyle textFiledTextStyle = TextStyle(
  fontSize: subTitleSize,
  fontWeight: FontWeight.w500,
  height: charHeight,
  color: black,
);

TextStyle textAlignedTextStyle = TextStyle(
  fontSize: alignedTextSize,
  fontWeight: FontWeight.w500,
  height: charHeight,
  decoration: TextDecoration.underline,
  color: hint,
);
