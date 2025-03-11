import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/features/auth/login/view/screen/login_screen.dart';
import 'package:marketi/features/auth/signup/view/screen/sign_up_screen.dart';
import 'package:marketi/features/forgotPassword/congratulation.dart';
import 'package:marketi/features/forgotPassword/forgetpassword.dart';
import 'package:marketi/features/forgotPassword/forgetpasswordemail.dart';
import 'package:marketi/features/onBoarding/view/onBoarding.dart';
import 'package:marketi/features/onBoarding/view/splash.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.Splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.signup:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case Routes.Forgetpassword:
        return MaterialPageRoute(builder: (_) => Forgetpassword());
      case Routes.ForgetpasswordEmail:
        return MaterialPageRoute(builder: (_) => ForgetpasswordEmail());
      case Routes.Congratulation:
        return MaterialPageRoute(builder: (_) => Congratulation());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('NO route ${settings.name} '),
                  ),
                ));
    }
  }
}
