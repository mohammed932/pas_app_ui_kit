part of 'authentication.imports.dart';

@RoutePage()
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CurvedHeader(
            imageUrl:
                "https://res.cloudinary.com/zenbusiness/q_auto/v1/logaster/logaster-2020-07-2-upwork-logo-1024x512.png",
            title: "Proactive Solutions",
            height: 500.0,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Manage your vacation requests, HR letters, and more, all in one place.",
              style: PasTextTheme.of(context).xLarge.regular(),
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.only(bottom: 16.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: AppButton(
            text: "Log in",
            onPressed: () {
              appRouter.push(const LoginRoute());
            },
          ),
        ),
      ),
    );
  }
}
