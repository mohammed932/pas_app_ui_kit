import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/theme/typography/pas_text_theme.dart';
import 'package:pas_app/core/widgets/cards/custom_card.dart';

import '../../../../../../core/widgets/common/icon_with_text.dart';
import '../../../../../../gen/assets.gen.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.all(24.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New branch in Asia",
            style: PasTextTheme.of(context).heading2.bold(),
          ),
          Gap(8.h),
          IconWithText(
            icon: Assets.resources.icons.clock,
            text: "20 May, 2021",
          ),
          Gap(8.h),
          Text(
            "Expanding services in Singapore and Tokyo to meet regional demand Expanding services in Singapore and Tokyo to meet ",
            style: PasTextTheme.of(context).large.regular(),
          ),
          Gap(8.h),
          Row(
            children: [
              Text(
                "Read more",
                style: PasTextTheme.of(context).large.regular(),
              ),
              Gap(8.w),
              SvgPicture.asset(
                Assets.resources.icons.arrow,
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}
