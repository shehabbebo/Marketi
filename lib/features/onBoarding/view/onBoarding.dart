import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/colors.dart';
import 'package:marketi/core/utils/onBoarding_list.dart';
import 'package:marketi/features/onBoarding/view_model/cubit/onboarding_state.dart';
import 'package:marketi/features/onBoarding/view_model/cubit/onboarding_cubit.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = OnBoardingCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: PageView.builder(
                        controller: cubit.pageController,
                        onPageChanged: (index) {
                          cubit.changeCurrentIndex(index);
                        },
                        itemCount: onBoardingList.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            SizedBox(height: 50.h),
                            Image.asset(
                              onBoardingList[index].image ??
                                  'assets/default_image.png',
                              height: 250.h,
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  onBoardingList.length,
                                  (index) => AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    margin: EdgeInsets.only(right: 5),
                                    height:
                                        cubit.currentIndex == index ? 20 : 18,
                                    width:
                                        cubit.currentIndex == index ? 20 : 18,
                                    decoration: BoxDecoration(
                                      color: cubit.currentIndex == index
                                          ? AppColor.darkBlue
                                          : AppColor.lightBlue700,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              onBoardingList[index].title!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: AppColor.darkBlue,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text(
                                onBoardingList[index].textBody!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 40, right: 16, left: 16),
                              child: SizedBox(
                                width: 347.w,
                                height: 48.h,
                                child: MaterialButton(
                                  color: AppColor.primaryColor,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  onPressed: () {
                                    if (cubit.currentIndex <
                                        onBoardingList.length - 1) {
                                      cubit.nextPage();
                                    } else {
                                      // انتقل للشاشة التالية بعد إنهاء الـ OnBoarding
                                      // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> LoginScreen()));
                                    }
                                  },
                                  child: Text(
                                    cubit.currentIndex <
                                            onBoardingList.length - 1
                                        ? 'Next'
                                        : 'Get Started',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
