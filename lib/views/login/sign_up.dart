import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/login/login_bloc.dart';
import 'package:machine_test/widgets/app_bar/common_appbar.dart';
import 'package:machine_test/widgets/button/common_buttons.dart';
import 'package:machine_test/widgets/extension/widget_extentions.dart';
import 'package:machine_test/widgets/text/common_text.dart';

class SignUpView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: CommonAppbar(
        label: 'Sign up',
        onpress: () {
          Navigator.pop(context);
        },
      ),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == "Successfully Signed in") {
            Navigator.pushNamedAndRemoveUntil(
                context, '/pin-set', (route) => false);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      100.0.spaceY,
                      Center(child: blackText("Sign up", 25)),
                      75.0.spaceY,
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter a Email id';
                          } else if (!RegExp(
                                  "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*")
                              .hasMatch(value)) {
                            return 'Please Enter a valid Email';
                          } else {
                            return null;
                          }
                        },
                      ),
                      15.0.spaceY,
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Your Password';
                          } else if (value.length < 6) {
                            return 'Enter Strong Password';
                          }
                          return null;
                        },
                      ),
                      15.0.spaceY,
                      CommonButton(
                        isLoading: state.isloading,
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          if (formKey.currentState!.validate()) {
                            loginBloc.add(LoginEvent.signUp(email, password));
                          }
                        },
                        text: 'Sign up',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
