import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra/screens/resetPassword/resetPaswordPage.dart';
import 'package:montra/screens/signup/loginPage.dart';

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
              Text("Check your email text @text.com and"),
              Text("follow the instructions to reset your"),
              Text("password"),
              SizedBox(
                height: 190.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResetPasswordPage(),
                      ),
                    );
                  },
                  child: Text("Continue"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text("Back to Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(30.0),
      ),
    );
  }
}
