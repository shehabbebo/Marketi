// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'onboarding_state.dart';

// class OnBoardingCubit extends Cubit<OnBoardingState> {
//   static OnBoardingCubit get(context) => BlocProvider.of(context);
//   OnBoardingCubit() : super(OnBoardingInitial()) {
//     pageController = PageController();
//   }
//   late PageController pageController;
//   int currentIndex = 0;
//   void changeCurrentIndex(int index) {
//     currentIndex = index;
//     emit(ChangeDotState());
//   }

//   void nextPage() {
//     currentIndex++;
//     pageController.animateToPage(currentIndex,
//         duration: Duration(microseconds: 900), curve: Curves.easeInOut);
//     emit(NextPageState());
//   }
// }
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';
import 'package:flutter/material.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  static OnBoardingCubit get(context) => BlocProvider.of(context);

  OnBoardingCubit() : super(OnBoardingInitial()) {
    pageController = PageController();
  }

  late PageController pageController;
  int currentIndex = 0;

  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangeDotState());
  }

  void nextPage() {
    currentIndex++;
    pageController.animateToPage(
      currentIndex,
      duration: Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
    emit(NextPageState());
  }
}
