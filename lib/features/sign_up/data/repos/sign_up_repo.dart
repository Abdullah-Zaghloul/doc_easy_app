import 'package:doc_easy_app/core/networking/api_error_handler.dart';
import 'package:doc_easy_app/core/networking/api_result.dart';
import 'package:doc_easy_app/core/networking/api_service.dart';
import 'package:doc_easy_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_easy_app/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signup(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
