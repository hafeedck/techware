import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/login/login_bloc.dart';
import 'package:machine_test/widgets/app_bar/common_appbar.dart';
import 'package:machine_test/widgets/button/common_buttons.dart';

class LoginView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      appBar: CommonAppbar(
        label: 'Login',
        onpress: () {},
      ),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == "Successfully logged in") {
            Navigator.pushNamedAndRemoveUntil(
                context, '/splash', (route) => false);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  CommonButton(
                    isLoading: state.isloading,
                    onPressed: () {
                      final email = emailController.text.trim();
                      final password = passwordController.text.trim();
                      loginBloc.add(LoginEvent.login(email, password));
                    },
                    text: 'Login',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
