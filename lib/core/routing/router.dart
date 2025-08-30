import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/helper/cache_helper.dart';
import 'package:marketi/features/auth/login/view/screen/login_screen.dart';
import 'package:marketi/features/auth/login/view/screen/onBoarding.dart';

import 'package:marketi/features/auth/login/view_model/cubit/login_cubit.dart';
import 'package:marketi/features/auth/otp/view/screen/congratulations_screen.dart';
import 'package:marketi/features/auth/otp/view/screen/create_new_password.dart';
import 'package:marketi/features/auth/otp/view/screen/forgot_password_screen.dart';
import 'package:marketi/features/auth/otp/view/screen/forgot_password_with_phone.dart';
import 'package:marketi/features/auth/otp/view/screen/otp_email_screen.dart';
import 'package:marketi/features/auth/otp/view/screen/otp_phone_screen.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/forgot_cubit.dart';
import 'package:marketi/features/auth/signup/view/screen/sign_up_screen.dart';
import 'package:marketi/features/layout/home/presention/view/brand_view.dart';
import 'package:marketi/features/layout/home/presention/view/category_view.dart';
import 'package:marketi/features/layout/home/presention/view/home_view.dart';
import 'package:marketi/features/layout/home/presention/view/popular_view.dart';
import 'package:marketi/features/layout/presentaion/view/layout_view.dart';

import 'package:marketi/features/auth/login/view/screen/onBoarding.dart';
import 'package:marketi/features/onBoarding/view/splash.dart';

import '../constant/string.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Splash:
        return MaterialPageRoute(
            builder: (_) => Splash(onFinished: (context) {}));

      case Routes.OnBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      case Routes.signup:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case Routes.forgotPassword:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => ForgotCubit(getIt()),
                child: ForgotPasswordScreen()));
      case Routes.forgotPasswordPhone:
        return MaterialPageRoute(builder: (_) => ForgotPasswordPhone());
      case Routes.otpPhone:
        return MaterialPageRoute(builder: (_) => const OtpPhoneScreen());
      case Routes.otpEmail:
        return MaterialPageRoute(builder: (_) => OtpEmailScreen());
      case Routes.congratulationsScreen:
        return MaterialPageRoute(builder: (_) => const CongratulationsScreen());
      case Routes.createNewPass:
        return MaterialPageRoute(builder: (_) => CreateNewPassword());
      case Routes.layout:
        return MaterialPageRoute(builder: (_) => const LayoutView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.popular:
        return MaterialPageRoute(builder: (_) => const PopularView());
      case Routes.brand:
        return MaterialPageRoute(builder: (_) => const BrandView());
      case Routes.category:
        return MaterialPageRoute(builder: (_) => const CategoryView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
