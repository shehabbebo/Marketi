import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';

import 'package:marketi/features/auth/login/data/model/login_request_body.dart';

import '../model/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
      //test
    }
  }
}
