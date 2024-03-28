part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String email, String password) = Login;
  const factory LoginEvent.setPin(String pinCode) = SetPin;
  const factory LoginEvent.checkPin(String pinCode) = CheckPin;
  const factory LoginEvent.signUp(String email, String password) = SignUp;
}
