import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pas_app/core/theme/typography/pas_text_theme.dart';
import 'package:pas_app/core/widgets/cards/custom_card.dart';

import '../../../../../../core/theme/colors/colorspalette.dart';

class ScheduleEventCard extends StatelessWidget {
  final String eventName;
  final String time;
  final String statusText;
  final Color dateBackgroundColor;
  final Color timeBackgroundColor;
  final IconData statusIcon;
  final Color statusTextColor;
  final VoidCallback? onTap;

  const ScheduleEventCard({
    Key? key,
    required this.eventName,
    required this.time,
    required this.statusText,
    required this.dateBackgroundColor,
    required this.timeBackgroundColor,
    required this.statusIcon,
    required this.statusTextColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomCard(
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: dateBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(20.r),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "12",
                      textAlign: TextAlign.center,
                      style: PasTextTheme.of(context)
                          .heading2
                          .bold(color: PasColors.addational.white),
                    ),
                    Text(
                      "Sep",
                      textAlign: TextAlign.center,
                      style: PasTextTheme.of(context)
                          .heading2
                          .bold(color: PasColors.addational.white),
                    ),
                  ],
                ),
              ),
            ),
            // Event Details Section
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text(
                        eventName,
                        style: PasTextTheme.of(context).medium.semiBold(),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: timeBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          time,
                          style: PasTextTheme.of(context).medium.semiBold(),
                        ),
                      )
                    ]),
                    Spacer(),
                    Row(
                      children: [
                        Container(),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              statusIcon,
                              size: 16,
                              color: statusTextColor,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              statusText,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: statusTextColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
