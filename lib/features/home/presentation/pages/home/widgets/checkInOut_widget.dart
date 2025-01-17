import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/theme/buttons/app_button.dart';
import '../../../../../../core/theme/typography/pas_text_theme.dart';
import '../../../../../../core/widgets/cards/custom_card.dart';
import '../../../../../../core/widgets/common/gradient_progress_indicator.dart';
import '../../../../../../core/widgets/common/icon_with_text.dart';
import '../../../../../../gen/assets.gen.dart';

class CheckInOutWidget extends StatelessWidget {
  const CheckInOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You worked",
            style: PasTextTheme.of(context).medium.semiBold(),
          ),
          const SizedBox(height: 8),
          Text(
            "00:00",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
          ),
          Gap(16.h),
          GradientProgressIndicator(
            progress: 0.6,
          ),
          Gap(16.h),
          Align(
            alignment: Alignment.center,
            child: IconWithText(
              icon: Assets.resources.icons.clock,
              text: "Check in to start your shift",
            ),
          ),
          Gap(10.h),
          Align(
            alignment: Alignment.center,
            child: IconWithText(
              icon: Assets.resources.icons.clock,
              text: "Check in to capture location",
            ),
          ),
          Gap(16.h),
          Container(
            width: double.infinity,
            child: AppButton(
              text: "Check in",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
