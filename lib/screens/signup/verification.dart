import 'package:flutter/material.dart';
import 'package:montra/screens/signup/loginPage.dart';
import 'package:montra/utils/colors.dart';

import '../../utils/utils.dart';

class VerficationPage extends StatefulWidget {
  const VerficationPage({Key? key}) : super(key: key);

  @override
  State<VerficationPage> createState() => _VerficationPageState();
}

class _VerficationPageState extends State<VerficationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Verification", style: title3Dark75),
          backgroundColor: AppCustomColors.light[900],
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter your", style: title1Dark75),
              Text(
                "Verification code",
                style: title1Dark75,
              ),
              SizedBox(
                height: 177.0,
              ),
              _verificationCode(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _verificationCode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "We sent a verificatin code to your",
          style: body1Light20,
        ),
        Text("email brajaoma*****@gmail.com. You can"),
        Text(
          "check your inbox",
          style: body1Light20,
        ),
        Row(
          children: [
            Text("I didn't receive the code?"),
            TextButton(
              onPressed: () {},
              child: Text("Send again"),
            ),
          ],
        ),
        SizedBox(
          height: 46.0,
        ),
        _verifyButton(),
      ],
    );
  }

  Widget _verifyButton() {
    return Column(
      children: [
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
            child: Text("Verify"),
          ),
        ),
      ],
    );
  }
}
