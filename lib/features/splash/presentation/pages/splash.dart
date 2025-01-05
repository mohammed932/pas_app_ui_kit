import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/buttons/app_button.dart';
import '../../../../core/theme/inputs/regular_text_field.dart';
import '../../../../core/theme/typography/pas_text_theme.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "hello mokhrae",
                style: PasTextTheme.of(context).heading1.bold(),
              ),
              PasRegularTextField(
                label: "enter name",
                onSubmit: (value) {
                  print("name : $value");
                },
                validator: (val) {
                  if (val == "abc") {
                    return "not accepted";
                  }
                  return null;
                },
              ),
              Gap(8.h),
              PasRegularTextField(
                label: "enter password",
                onSubmit: (value) {
                  print("password : $value");
                },
              ),
              Gap(10.h),
              AppButton(
                text: 'hello',
                onPressed: () {},
              ),
              Gap(10.h),
              AppButton(
                text: 'hello',
                type: ButtonType.outlined,
                onPressed: () {},
              ),
              Gap(10.h),
              AppButton(
                text: 'hello',
                type: ButtonType.outlined,
                iconLeft: Icon(Icons.heart_broken),
                onPressed: () {},
              ),
              Gap(10.h),
              AppButton(
                text: 'hello',
                type: ButtonType.outlined,
                iconRight: Icon(Icons.heart_broken),
                onPressed: () {},
              ),
              Gap(10.h),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: const Text("Ok"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
