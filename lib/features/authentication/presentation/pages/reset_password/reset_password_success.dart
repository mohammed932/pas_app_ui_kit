import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pas_app/core/theme/buttons/app_button.dart';
import 'package:pas_app/core/theme/typography/pas_text_theme.dart';
import 'package:pas_app/gen/assets.gen.dart';

@RoutePage()
class ResetPasswordSuccessScreen extends StatelessWidget {
  const ResetPasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20.r),
            decoration: BoxDecoration(
              color: Colors.greenAccent.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: SvgPicture.asset(
              Assets.resources.icons.inboxFilled,
              width: 84.w,
              height: 73.h,
              fit: BoxFit.cover,
            ),
          ),
          Gap(20.0),
          Text(
            "Reset Password",
            style: PasTextTheme.of(context).heading1.bold(),
          ),
          Gap(20.h),
          Text(
            "Resend Code",
            style: PasTextTheme.of(context).medium.semiBold(),
          ),
          Gap(40.0),
          AppButton(
            text: "Log in",
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.only(bottom: 30.h),
        child: Container(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: PasTextTheme.of(context).medium.semiBold(),
              children: [
                const TextSpan(
                  text:
                      "Did not receive the code? Check your Authenticator app ,or ",
                ),
                TextSpan(
                  text: "try another email address",
                  style: PasTextTheme.of(context)
                      .medium
                      .semiBold(color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
