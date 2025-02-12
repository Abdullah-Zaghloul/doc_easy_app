import 'package:doc_easy_app/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success(T data) = Success<T>;
  const factory SignUpState.error(ApiErrorModel apiErrorModel) = Error;
}
