import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/widgets/extension/widget_extentions.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/widgets/style/color.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      checkLoginStatus();
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void checkLoginStatus() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, '/pin-check', (route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors().primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.production_quantity_limits,
                color: Colors.white,
                size: 50,
              ),
              25.0.spaceY,
              const Text(
                'TECHWARE',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ));
  }
}
