import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:pas_app/core/environments/app_env.dart';
import 'package:pas_app/core/injection/injection.dart';
import 'package:pas_app/core/router/router.dart';
import 'package:pas_app/core/widgets/loading_widget.dart';

import 'core/cache/storage_service.dart';
import 'core/environments/base_environment.dart';
import 'core/theme/colors/pas_color_theme.dart';
import 'core/theme/colors/pas_dark_theme.dart';
import 'core/theme/pas_ui_kit.dart';

void main({BaseEnvironment? environment}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  getIt<AppEnv>().updateEnv(env: environment!);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Lock to portrait up orientation
  ]).then((_) async {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ar', 'EG'), Locale('en', 'US')],
        path: 'resources/translation',
        fallbackLocale: const Locale('en', 'US'),
        startLocale: getIt<StorageService>().locale,
        child: const MyApp(),
      ),
    );
  });
}

final appRouter = getIt<AppRouter>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return PasUiKitInitializer(
          designSize: const Size(393, 852),
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            home: LoaderOverlay(
              overlayColor: Colors.black.withOpacity(0.5),
              overlayWidgetBuilder: (_) => const LoadingWidget(),
              child: MaterialApp.router(
                title: 'PAS',
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                debugShowCheckedModeBanner: false,
                routerConfig: getIt.get<AppRouter>().config(),
                builder: (context, child) {
                  PasUiKitInitializer.update(context);
                  return Theme(
                    data: Theme.of(context).copyWith(
                      brightness: PasColorTheme.of(context) is PasDarkTheme
                          ? Brightness.dark
                          : Brightness.light,
                    ),
                    child: child ?? Container(),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
