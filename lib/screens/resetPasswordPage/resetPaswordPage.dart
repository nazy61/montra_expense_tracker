import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../utils/utils.dart';
import 'package:montra/widgets/widgets.dart';

import 'package:montra/screens/loginPage/loginPage.dart';
import 'package:montra/widgets/input_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Reset Password", style: title3Dark75),
          backgroundColor: AppCustomColors.light[900],
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(
                hint: "New Password",
              ),
              SizedBox(
                height: 36.0,
              ),
              InputField(
                hint: "Retype new Password",
              ),
              SizedBox(
                height: 32.0,
              ),
              PrimaryButton(
                title: "Continue",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
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
