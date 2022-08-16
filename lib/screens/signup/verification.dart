import 'package:flutter/material.dart';
import 'package:montra/screens/screens.dart';
import 'package:montra/screens/signup/loginPage.dart';
import 'package:montra/utils/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Enter your", style: title1Dark75),
              Text(
                "Verification code",
                style: title1Dark75,
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
        PinCodeTextField(
          appContext: context,
          length: 6,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            activeFillColor: Colors.white,
          ),
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.blue.shade50,
          enableActiveFill: true,
          onCompleted: (v) {
            print("Completed");
          },
          onChanged: (value) {
            print(value);
          },
        ),
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
        PrimaryButton(
          title: "Verify",
          onPressed: () => AppCustomMethods.navigate(
            const SetupPinPage(),
            context,
          ),
        ),
      ],
    );
  }
}
