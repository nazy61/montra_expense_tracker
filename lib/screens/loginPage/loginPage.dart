import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra/screens/accountBalancePage/accountBalancePage.dart';

import 'package:montra/screens/screens.dart';

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
          leading: Container(),
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
        PrimaryButton(
          title: "Login",
          onPressed: () => AppCustomMethods.navigate(
            const AccountBalancePage(),
            context,
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
          onPressed: () => AppCustomMethods.navigate(
            const ForgotPasswordPage(),
            context,
          ),
          child: Text(
            "Forgot Password",
            style: title3Violett100,
          ),
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
        Text(
          "Don't have an account yet?",
          style: body1Light20,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignupScreen(),
              ),
            );
          },
          child: Text(
            "Sign up",
            style: title3Violett100,
          ),
        ),
      ],
    );
  }
}
