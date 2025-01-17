part of 'authentication.imports.dart';

@RoutePage()
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                "Enter your code",
                style: PasTextTheme.of(context).heading1.bold(),
              ),
              Gap(10.h),
              Text(
                "To login, enter below the six digit authentication code provided by your Authenticator app",
                style: PasTextTheme.of(context).xLarge.regular(),
              ),
              Gap(20.h),
              OtpPinWidget(
                onDone: (value) {},
              ),
              Gap(20.h),
              Text(
                "Resend Code",
                style: PasTextTheme.of(context).medium.semiBold(),
              ),
              Gap(20.h),
              Container(
                width: double.infinity,
                child: AppButton(
                  text: "Log in",
                  onPressed: () {
                    appRouter.push(OtpRoute());
                  },
                ),
              )
            ],
          ),
        ),
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
