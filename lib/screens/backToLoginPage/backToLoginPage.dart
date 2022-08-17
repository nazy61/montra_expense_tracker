import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:montra/screens/loginPage/loginPage.dart';
import 'package:montra/screens/resetPasswordPage/resetPaswordPage.dart';

import 'package:montra/widgets/widgets.dart';
import '../../utils/utils.dart';

class BackToLoginPage extends StatefulWidget {
  const BackToLoginPage({Key? key}) : super(key: key);

  @override
  State<BackToLoginPage> createState() => _BackToLoginPageState();
}

class _BackToLoginPageState extends State<BackToLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _image(),
              _titleSection(),
              Text(
                "Check your email text @text.com and",
                style: body1Light20,
              ),
              Text(
                "follow the instructions to reset your",
                style: body1Light20,
              ),
              Text(
                "password",
                style: body1Light20,
              ),
              SizedBox(
                height: 190.0,
              ),
              PrimaryButton(
                title: "Continue",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              PrimaryButton(
                title: "Back to Login",
                onPressed: () {
                  Navigator.of(context).pop(
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

  Widget _image() {
    return Expanded(
      child: Image.asset("assets/images/Variant=Your email is on the way.png"),
    );
  }

  Widget _titleSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Your Email is on the way",
          style: title2Dark75,
        ),
        SizedBox(
          height: 24.0,
        ),
      ],
    );
  }
}
