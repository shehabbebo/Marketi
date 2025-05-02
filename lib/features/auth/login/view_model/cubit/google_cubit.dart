// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:marketi/features/auth/login/data/model/google_request_body.dart';
// import 'package:marketi/features/auth/login/data/repo/google_repo.dart';
// import 'package:marketi/features/auth/login/view_model/cubit/google_state.dart';

// class GoogleCubit extends Cubit<GoogleState> {
//   GoogleRepo googleRepo;
//   GoogleCubit(this.googleRepo) : super(const GoogleState.initial());

//   void emitLoginStatesGoogle(GoogleRequestBody googleRequestBody) async {
//     emit(const GoogleState.loading());
//     final response = await googleRepo.google(GoogleRequestBody());
//     response.when(success: (googleResponse) {
//       emit(GoogleState.success(googleResponse));
//     }, failure: (error) {
//       emit(GoogleState.error(error: error.apiErrorModel.message ?? ''));
//     });
//   }
// }
