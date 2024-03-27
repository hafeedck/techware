part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String email, String password) = Login;
  const factory LoginEvent.setPin(String pinCode) = Pin;
}
