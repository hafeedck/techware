import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is Login) {
        await login(event, emit);
      } else if (event is Pin) {
        await setPin(event, emit);
      }
    });
  }

  Future<void> login(
    Login event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      isloading: true,
      status: "",
    ));
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: event.email.trim(), password: event.password.trim());

      if (userCredential.user != null) {
        Fluttertoast.showToast(msg: 'Login Successfully');
        emit(state.copyWith(
          status: "Successfully logged in",
        ));
      } else {
        Fluttertoast.showToast(msg: 'Failed to log in');
        emit(state.copyWith(
          status: "",
        ));
      }
    } finally {
      emit(state.copyWith(
        isloading: false,
      ));
    }
  }

  Future<void> setPin(
    Pin event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      isloading: true,
      status: "",
    ));
    try {
      const storage = FlutterSecureStorage();
      await storage.write(key: 'pin', value: event.pinCode);
    } finally {
      emit(state.copyWith(
        isloading: false,
      ));
    }
  }
}
