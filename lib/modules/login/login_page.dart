import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: AppColors.background,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                  width: size.width,
                  height: size.height * .43,
                  color: AppColors.primary),
              Positioned(
                  top: size.height * .08,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(
                      maxHeight: size.height * .5,
                    ),
                    child: AspectRatio(
                      aspectRatio: 202 / 363,
                      child: Image.asset(AppImages.person,
                          fit: BoxFit.fill),
                    ),
                  )),
              Positioned(
                bottom: size.height * .05,
                left: 0,
                right: 0,
                child: Column(children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * .03,
                        left: size.width * .18,
                        right: size.width * .18),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * .05,
                        left: size.width * .1,
                        right: size.width * .1),
                    child: SocialLoginButton(onTap: () {
                      controller.googleSignIn(context);
                    }),
                  )
                ]),
              )
            ],
          ),
        ));
  }
}
