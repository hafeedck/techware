import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/login/login_bloc.dart';
import 'package:machine_test/widgets/app_bar/common_appbar.dart';
import 'package:machine_test/widgets/button/common_buttons.dart';
import 'package:machine_test/widgets/textfeild/otp_textfield.dart';

class PinSetUpView extends StatelessWidget {
  const PinSetUpView({super.key});

  @override
  Widget build(BuildContext context) {
    String otp = '';
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      appBar: CommonAppbar(label: "Pin Set UP ", onpress: () {}),
      body: Padding(
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
                loginBloc.add(LoginEvent.setPin(otp));
              },
              text: 'Set PIN',
            ),
          ],
        ),
      ),
    );
  }
}
