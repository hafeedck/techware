import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/login/login_bloc.dart';
import 'package:machine_test/widgets/app_bar/common_appbar.dart';
import 'package:machine_test/widgets/button/common_buttons.dart';
import 'package:machine_test/widgets/style/color.dart';
import 'package:machine_test/widgets/textfeild/otp_textfield.dart';

class PinCheckView extends StatelessWidget {
  const PinCheckView({super.key});

  @override
  Widget build(BuildContext context) {
    String otp = '';
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      appBar: CommonAppbar(label: "Pin Code", onpress: () {}),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == "Correct PIN") {
            Navigator.pushNamedAndRemoveUntil(
                context, '/product-home', (route) => false);
          } else if (state.status == "Incorrect PIN") {
            toast("Incorrect PIN");
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OtpTextfield(
                oncomplete: (pin) {
                  return null;
                },
                onchange: (pin) {
                  otp = pin;
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              CommonButton(
                onPressed: () {
                  loginBloc.add(LoginEvent.checkPin(otp));
                },
                text: "Enter Pin",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
