import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/theme/colors/colorspalette.dart';
import 'package:pas_app/core/theme/typography/pas_text_theme.dart';
import 'package:pas_app/core/widgets/cards/custom_card.dart';

import '../../../../../../core/widgets/common/icon_with_text.dart';
import '../../../../../../gen/assets.gen.dart';

class UpComingEventCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String date;
  final String time;
  final String statusText;
  final IconData dateIcon;
  final IconData timeIcon;
  final IconData statusIcon;
  final Color statusTextColor;

  const UpComingEventCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.time,
    required this.statusText,
    this.dateIcon = Icons.calendar_today,
    this.timeIcon = Icons.access_time,
    this.statusIcon = Icons.videocam,
    this.statusTextColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 108.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title and Status Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: PasTextTheme.of(context).heading3.bold(),
                      ),
                    ),
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
                          style: PasTextTheme.of(context)
                              .small
                              .regular(color: PasColors.addational.blue),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Subtitle
                Text(
                  subtitle,
                  style: PasTextTheme.of(context).large.regular(),
                ),
                const SizedBox(height: 16),
                // Date and Time Row
                IconWithText(
                  icon: Assets.resources.icons.clock,
                  text: date,
                ),
                Gap(8.h),
                IconWithText(
                  icon: Assets.resources.icons.clock,
                  text: time,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
