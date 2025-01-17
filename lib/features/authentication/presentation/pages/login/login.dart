part of '../authentication.imports.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Column(
              children: [
                const CurvedHeader(
                  imageUrl: "https://images.app.goo.gl/6wHiyNpYAhGMCWbQ7",
                  title: "Proactive Solutions",
                ),

                //  Login Form
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log in",
                        style: PasTextTheme.of(context).heading1.bold(),
                      ),
                      Gap(10.h),
                      Text(
                        "Please sign in to continue",
                        style: PasTextTheme.of(context).xLarge.regular(),
                      ),
                      // Gap(20.h),
                      // const PasRegularTextField(
                      //   label: "Enter your Email",
                      // ),
                      // Gap(10.h),
                      // const PasRegularTextField(
                      //   label: "Password",
                      // ),
                      // Gap(10.h),
                      // const PasRegularTextField(
                      //   label: "Login with URL",
                      // ),
                      // Gap(20.h),
                      // Row(
                      //   children: [
                      //     Row(
                      //       children: [
                      //         Checkbox(
                      //           value: true,
                      //           onChanged: (value) {},
                      //         ),
                      //         Text(
                      //           "Remember me",
                      //           style: PasTextTheme.of(context).medium.semiBold(),
                      //         )
                      //       ],
                      //     ),
                      //     const Spacer(),
                      //     Text(
                      //       "Forget Password?",
                      //       style: PasTextTheme.of(context).medium.semiBold(),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ],
            )),
            bottomNavigationBar: SafeArea(
              minimum: EdgeInsets.only(bottom: 16.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AppButton(
                  text: "Log in",
                  onPressed: () {
                    context.read<LoginBloc>().add(LoginEvent.login(
                          username: "123",
                          password: "123",
                        ));
                    // appRouter.push(OtpRoute());
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
