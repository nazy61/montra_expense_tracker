import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:montra/screens/screens.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../utils/utils.dart';
import 'package:montra/widgets/primary_button.dart';

import 'package:montra/screens/setupAccountPage/setupAccountPage.dart';

class SetupPinPage extends StatefulWidget {
  const SetupPinPage({Key? key}) : super(key: key);

  @override
  State<SetupPinPage> createState() => _SetupPinPageState();
}

class _SetupPinPageState extends State<SetupPinPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF7F3DFF),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Let's setup your PIN",
                style: title3Light80,
              ),
              SizedBox(
                height: 50.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      selectedColor: Colors.grey,
                      selectedFillColor: Color(0xFF7F3DFF),
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      inactiveFillColor: Color(0xFF7F3DFF),
                      activeFillColor: Colors.white,
                      shape: PinCodeFieldShape.circle,
                    ),
                    animationDuration: Duration(milliseconds: 100),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              _inputButtonSection(),
              PrimaryButton(
                title: "Next",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SetupAccountPage(),
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

  Widget _inputButtonSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _rowOne(),
        SizedBox(
          height: 20.0,
        ),
        _rowTwo(),
        SizedBox(
          height: 20.0,
        ),
        _rowThree(),
        SizedBox(
          height: 20.0,
        ),
        _rowFour(),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  Widget _rowOne() {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(title: "1"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "2"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "3"),
        ),
      ],
    );
  }

  Widget _rowTwo() {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(title: "4"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "5"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "6"),
        ),
      ],
    );
  }

  Widget _rowThree() {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(title: "7"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "8"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "9"),
        ),
      ],
    );
  }

  Widget _rowFour() {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(title: ""),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "0"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: PrimaryButton(title: "OK"),
        ),
      ],
    );
  }
}
