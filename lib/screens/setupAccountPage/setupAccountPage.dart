import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:montra/screens/screens.dart';
import 'package:montra/widgets/primary_button.dart';

import '../../utils/utils.dart';

class SetupAccountPage extends StatefulWidget {
  const SetupAccountPage({Key? key}) : super(key: key);

  @override
  State<SetupAccountPage> createState() => _SetupAccountPageState();
}

class _SetupAccountPageState extends State<SetupAccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's setup your account",
                style: title1Dark75,
              ),
              Text(
                "account!",
                style: title1Dark75,
              ),
              SizedBox(
                height: 37.0,
              ),
              Text(
                "Account can be your bank,credit card or",
                style: regular3Dark75,
              ),
              Text(
                "your wallet",
                style: regular3Dark75,
              ),
              SizedBox(
                height: 434.0,
              ),
              _letsGoButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _letsGoButton() {
    return Column(
      children: [
        PrimaryButton(
          title: "Let's go",
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddNewAccountPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
