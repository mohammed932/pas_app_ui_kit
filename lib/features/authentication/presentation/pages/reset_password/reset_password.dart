part of '../authentication.imports.dart';

@RoutePage()
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
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
              Gap(10.h),
              Text(
                "Enter the Email associated with your account and we well send an email with verification code to reset your passwords.",
                style: PasTextTheme.of(context).xLarge.regular(),
              ),
              Gap(20.h),
              const PasRegularTextField(
                label: "Enter your Email",
              ),
              Gap(20.h),
              Container(
                width: double.infinity,
                child: AppButton(
                  text: "Log in",
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
