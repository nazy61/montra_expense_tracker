import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra/screens/forgotPassword/forgotPasswordPage.dart';
import 'package:montra/screens/screens.dart';
import 'package:montra/screens/setupPin/setupPinPage.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Login", style: title3Dark75),
          backgroundColor: AppCustomColors.light[900],
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0.h),
              InputField(
                hint: "Email",
              ),
              SizedBox(height: 20.0.h),
              PasswordInputField(
                hint: "Password",
              ),
              SizedBox(height: 20.0.h),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SetupPinPage(),
                ),
              );
            },
            child: Text("Login"),
          ),
        ),
        _forgotPasswordLink(),
      ],
    );
  }

  Widget _forgotPasswordLink() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 33.0,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ForgotPasswordPage(),
              ),
            );
          },
          child: Text("Forgot Password"),
        ),
        SizedBox(
          height: 38.0,
        ),
        _signUpLink()
      ],
    );
  }

  Widget _signUpLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account yet?"),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignupScreen(),
              ),
            );
          },
          child: Text("Sign up"),
        ),
      ],
    );
  }
}
