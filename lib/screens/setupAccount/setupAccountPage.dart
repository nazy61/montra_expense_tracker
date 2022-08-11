import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              Text("Let's setup your account"),
              Text("account!"),
              SizedBox(
                height: 37.0,
              ),
              Text("account can be your bank,credit card or"),
              Text("your wallet"),
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
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Let's go"),
          ),
        ),
      ],
    );
  }
}
