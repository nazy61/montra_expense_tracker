import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:montra/screens/addNewWalletPage/addNewWalletPage.dart';
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
        body: Column(
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
    );
  }

  Widget _inputField() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Column(
        children: [
          InputField(
            hint: "Name",
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0.r),
              border:
                  Border.all(width: 2.0.w, color: AppCustomColors.borderColor),
            ),
            child: DropdownButton<String>(
              value: "One",
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              isExpanded: true,
              underline: Container(),
              onChanged: (String? newValue) {},
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text("Account type"),
                  );
                },
              ).toList(),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: PrimaryButton(
            title: "Continue",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddNewWalletPage(),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
