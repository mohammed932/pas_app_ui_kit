import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/theme/colors/colorspalette.dart';
import 'package:pas_app/core/widgets/cards/custom_card.dart';
import 'package:pas_app/gen/assets.gen.dart';

import '../../theme/typography/pas_text_theme.dart';

class AttendenceStatus {
  final String label;
  final Color? color;

  AttendenceStatus({required this.label, this.color});
}

class AttendenceInfo {
  final String startDate;
  final String duration;
  final String endDate;

  AttendenceInfo({
    required this.startDate,
    required this.duration,
    required this.endDate,
  });
}

class AttendenceRequest {
  final String label;
  final VoidCallback onTap;

  AttendenceRequest({required this.label, required this.onTap});
}

class AttendanceCard extends StatelessWidget {
  final String title;
  final AttendenceInfo? attendenceInfo;
  final AttendenceStatus? attendenceStatus;
  final AttendenceRequest? attendenceRequest;
  const AttendanceCard({
    Key? key,
    required this.title,
    this.attendenceStatus,
    this.attendenceInfo,
    this.attendenceRequest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              if (attendenceStatus != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                  decoration: BoxDecoration(
                    color: attendenceStatus?.color ??
                        PasColors.system.notification,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    attendenceStatus!.label,
                    style: PasTextTheme.of(context).medium.semiBold(),
                  ),
                ),
            ],
          ),
          if (attendenceInfo != null) ...[
            Gap(16),
            _attendenceInfo(
              context,
              attendenceInfo!.startDate,
              attendenceInfo!.duration,
              attendenceInfo!.endDate,
            ),
          ],
          if (attendenceRequest != null) ...[
            Gap(24.h),
            GestureDetector(
              onTap: attendenceRequest!.onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 20.0,
                    color: PasColors.primary.p300,
                  ),
                  Text(
                    "Add permission request",
                    style: PasTextTheme.of(context)
                        .large
                        .regular(color: PasColors.primary.p300),
                  )
                ],
              ),
            )
          ]
        ],
      ),
    );
  }

  _attendenceInfo(
      BuildContext context, String startDate, String duration, String endDate) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Starting",
              style: PasTextTheme.of(context).medium.semiBold(),
            ),
            Gap(4.h),
            Text(
              startDate,
              style: PasTextTheme.of(context).large.regular(),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 2.h,
              width: 20.w,
              color: PasColors.gray.g300,
            ),
            Gap(8.w),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 8.h,
              ),
              decoration: BoxDecoration(
                color: PasColors.gray.g100,
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: Text(
                duration,
                style: PasTextTheme.of(context).medium.semiBold(),
              ),
            ),
            Gap(8.w),
            SvgPicture.asset(Assets.resources.icons.arrow),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ending",
              style: PasTextTheme.of(context).medium.semiBold(),
            ),
            const SizedBox(height: 4),
            Text(
              endDate,
              style: PasTextTheme.of(context).large.regular(),
            ),
          ],
        ),
      ],
    );
  }
}
