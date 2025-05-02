// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:marketi/core/constant/string.dart';
// import 'package:marketi/features/auth/login/view/screen/login_screen.dart';
// import 'package:marketi/features/auth/signup/view/screen/sign_up_screen.dart';
// import 'package:marketi/features/onBoarding/view/onBoarding.dart';
// import 'package:marketi/features/onBoarding/view/splash.dart';
// import 'package:marketi/features/screen_task/cart.dart';
// import 'package:marketi/features/screen_task/checkout.dart';
// import 'package:marketi/features/screen_task/congratulation.dart';
// import 'package:marketi/features/screen_task/forgetpassword.dart';
// import 'package:marketi/features/screen_task/forgetpasswordemail.dart';
// import 'package:marketi/features/screen_task/oopsnotfound.dart';
// import 'package:marketi/features/screen_task/resetpassword.dart';
// import 'package:marketi/features/screen_task/verefycodeE.dart';
// import 'package:marketi/features/screen_task/verefycodeM.dart';

// class AppRouter {
//   Route generateRouter(RouteSettings settings) {
//     final arguments = settings.arguments;
//     switch (settings.name) {
//       case Routes.Splash:
//         return MaterialPageRoute(builder: (_) => Splash());
//       case Routes.OnBoardingScreen:
//         return MaterialPageRoute(builder: (_) => OnBoardingScreen());
//       case Routes.login:
//         return MaterialPageRoute(builder: (_) => LoginScreen());
//       case Routes.signup:
//         return MaterialPageRoute(builder: (_) => SignUpScreen());
//       case Routes.Forgetpassword:
//         return MaterialPageRoute(builder: (_) => Forgetpassword());
//       case Routes.ForgetpasswordEmail:
//         return MaterialPageRoute(builder: (_) => ForgetpasswordEmail());
//       case Routes.Congratulation:
//         return MaterialPageRoute(builder: (_) => Congratulation());
//       case Routes.VerificationCodePage:
//         return MaterialPageRoute(builder: (_) => VerificationCodePage());
//       case Routes.VerificationCodeE:
//         return MaterialPageRoute(builder: (_) => VerificationCodeE());
//       case Routes.Resetpassword:
//         return MaterialPageRoute(builder: (_) => Resetpassword());
//       case Routes.CartScreen:
//         return MaterialPageRoute(builder: (_) => CartScreen());
//       case Routes.Checkout:
//         return MaterialPageRoute(builder: (_) => Checkout());
//       case Routes.Oopsnotfound:
//         return MaterialPageRoute(builder: (_) => Oopsnotfound());

//       default:
//         return MaterialPageRoute(
//             builder: (_) => Scaffold(
//                   body: Center(
//                     child: Text('NO route ${settings.name} '),
//                   ),
//                 ));
//     }
//   }
// }

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
    // final arguments = settings.arguments;
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
