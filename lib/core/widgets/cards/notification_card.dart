import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../theme/colors/colorspalette.dart';
import '../../theme/typography/pas_text_theme.dart';

class NotificationCard extends StatelessWidget {
  final String text;
  final String leadingIcon;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color textColor;

  NotificationCard({
    Key? key,
    required this.text,
    required this.leadingIcon,
    required this.onTap,
    this.backgroundColor, // Default beige color
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: backgroundColor ?? PasColors.system.notification,
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  leadingIcon,
                  width: 20.w,
                  height: 17.h,
                  fit: BoxFit.cover,
                ),
                Gap(8.w),
                Text(
                  text,
                  style: PasTextTheme.of(context).buttonText.bold(),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: textColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
