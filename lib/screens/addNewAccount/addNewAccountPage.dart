import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:montra/widgets/input_field.dart';
import 'package:montra/widgets/primary_button.dart';

import '../../utils/utils.dart';

class AddNewAccountPage extends StatefulWidget {
  const AddNewAccountPage({Key? key}) : super(key: key);

  @override
  State<AddNewAccountPage> createState() => _AddNewAccountPageState();
}

class _AddNewAccountPageState extends State<AddNewAccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF7F3DFF),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Add new account"),
          leading: BackButton(),
          backgroundColor: Color(0xFF7F3DFF),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Balance",
                    style: title3Light80,
                  ),
                ],
              ),
              SizedBox(
                height: 13.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "£00.0",
                    style: titleXDark75,
                  ),
                ],
              ),
              _inputField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputField() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: InputField(
              hint: "Name",
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                  ),
                  child: InputField(
                    hint: "Account Type",
                    iconData: Icon(Icons.arrow_drop_down),
                  ),
                ),
              ],
            ),
          ),
          _buttonSection(),
        ],
      ),
    );
  }

  Widget _buttonSection() {
    return Column(
      children: [
        SizedBox(
          height: 40.0,
        ),
        PrimaryButton(
          title: "Continue",
          onPressed: () {},
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
