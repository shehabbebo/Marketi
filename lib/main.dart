import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/routing/router.dart';
import 'package:marketi/features/onBoarding/view_model/cubit/onboarding_cubit.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => OnBoardingCubit()),
          ],
          child: MaterialApp(
            title: 'Marketi',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            onGenerateRoute: appRouter.generateRouter,
            initialRoute: Routes.signup,
            debugShowCheckedModeBanner: false,
          ),
        ));
  }
}
