import 'package:flutter/material.dart';
import 'package:machine_test/views/login/login_view.dart';
import 'package:machine_test/views/login/pin_setup_view.dart';
import 'package:machine_test/views/splash_view.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  '/login': (context) => LoginView(),
  '/splash': (context) => const SplashView(),
  '/pin-set': (context) => const PinSetUpView(),
  // '/signup': (context) => const SignupView(),
};
