import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../theme/colors/colorspalette.dart';
import '../../theme/typography/pas_text_theme.dart';
import 'custom_card.dart';

class RequestTile extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  const RequestTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: CustomCard(
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 24.w,
              height: 24.h,
            ),
            Gap(12.w),
            Text(
              title,
              style: PasTextTheme.of(context).large.regular(),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  subtitle,
                  style: PasTextTheme.of(context).small.regular(),
                ),
                Gap(3.w),
                Text(
                  "available",
                  style: PasTextTheme.of(context)
                      .small
                      .regular(color: PasColors.gray.g400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
