import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:montra/screens/backToLoginPage/backToLoginPage.dart';
import 'package:montra/screens/screens.dart';
import 'package:montra/widgets/input_field.dart';
import 'package:montra/widgets/primary_button.dart';

import '../../utils/colors.dart';
import '../../utils/utils.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Forgot Password", style: title3Dark75),
          backgroundColor: AppCustomColors.light[900],
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 69.0,
              ),
              Text(
                "Don't worry.",
                style: title2Dark75,
              ),
              Text(
                "Enter your email and we'll",
                style: title2Dark75,
              ),
              Text(
                "send you a link to reset your",
                style: title2Dark75,
              ),
              Text(
                "password",
                style: title2Dark75,
              ),
              SizedBox(
                height: 46.0,
              ),
              InputField(
                hint: "Email",
              ),
              SizedBox(
                height: 32.0,
              ),
              PrimaryButton(
                title: "Continue",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BackToLoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
