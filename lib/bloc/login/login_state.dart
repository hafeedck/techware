part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    bool? isloading,
    String? status,
  }) = _LoginState;
  factory LoginState.initial() => const LoginState(
        isloading: false,
        status: "",
      );
}
