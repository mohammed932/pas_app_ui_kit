import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/theme/colors/colorspalette.dart';
import 'package:pas_app/core/theme/typography/pas_text_theme.dart';
import 'package:pas_app/gen/assets.gen.dart';

class AttendenceStatusCard extends StatelessWidget {
  const AttendenceStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: PasColors.primary.p100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "2",
                  style: PasTextTheme.of(context).heading2.bold(),
                ),
                // Spacer(),
                SvgPicture.asset(
                  Assets.resources.icons.home,
                  width: 20.w,
                  height: 20.h,
                )
              ],
            ),
          ),
          Gap(12.h),
          Text(
            "Present Days",
            style: PasTextTheme.of(context).large.regular(),
          )
        ],
      ),
    );
  }
}
