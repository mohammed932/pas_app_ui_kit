import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../theme/typography/pas_text_theme.dart';

class IconWithText extends StatelessWidget {
  final String icon;
  final String text;
  final TextStyle? textStyle;
  final Color? iconColor;

  const IconWithText({
    Key? key,
    required this.icon,
    required this.text,
    this.textStyle,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 15.w,
          height: 15.h,
          fit: BoxFit.cover,
        ),
        Gap(8.w), // Spacing between icon and text
        Text(
          text,
          style: textStyle ?? PasTextTheme.of(context).large.regular(),
        ),
      ],
    );
  }
}
