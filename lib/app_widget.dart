import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';

import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(
            primarySwatch: AppColors.kToDark,
            // primaryColor: AppColors.primary,
            appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.primary)),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => const SplashPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage()
        });
  }
}
