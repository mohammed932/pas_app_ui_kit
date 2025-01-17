import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/widgets/cards/custom_card.dart';

import '../../theme/typography/pas_text_theme.dart';

class ServiceCard extends StatelessWidget {
  final String icon;
  final String text;
  const ServiceCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.cover,
          ),
          Gap(10.h),
          Text(
            text,
            style: PasTextTheme.of(context).large.regular(),
          )
        ],
      ),
    ));
  }
}
