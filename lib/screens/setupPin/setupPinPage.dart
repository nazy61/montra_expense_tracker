import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:montra/screens/setupAccount/setupAccountPage.dart';
import 'package:montra/widgets/primary_button.dart';

import '../../utils/utils.dart';

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
}
