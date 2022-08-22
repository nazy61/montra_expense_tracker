import 'package:flutter/material.dart';
import 'package:montra/screens/youAreSetPage/youAreSetPage.dart';
import 'package:montra/widgets/input_field.dart';
import 'package:montra/widgets/primary_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/utils.dart';
import '../../widgets/input_field.dart';

class AddNewWalletPage extends StatefulWidget {
  const AddNewWalletPage({Key? key}) : super(key: key);

  @override
  State<AddNewWalletPage> createState() => _AddNewWalletPageState();
}

class _AddNewWalletPageState extends State<AddNewWalletPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF7F3DFF),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Add new wallet"),
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
            _inputFieldSection(),
          ],
        ),
      ),
    );
  }

  Widget _inputFieldSection() {
    return Container(
      padding: EdgeInsets.all(20.0),
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
            hint: "Chase",
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
                    child: Text(
                      "Bank",
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          _bankLogoSection(),
          _buttonSection(),
        ],
      ),
    );
  }

  Widget _bankLogoSection() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Bank",
              style: regular1Dark75,
            ),
          ],
        ),
        _rowOneSection(),
        _rowTwoSection()
      ],
    );
  }

  Widget _buttonSection() {
    return Column(
      children: [
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: PrimaryButton(
            title: "Continue",
            onPressed: () => AppCustomMethods.navigate(
              const YouAreSetPage(),
              context,
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }

  Widget _rowOneSection() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Icon(Icons.monetization_on),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Icon(Icons.monetization_on),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Icon(Icons.monetization_on),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Icon(Icons.monetization_on),
          ),
        ),
      ],
    );
  }

  Widget _rowTwoSection() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Icon(Icons.monetization_on),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Icon(Icons.monetization_on),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Icon(Icons.monetization_on),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "See Other",
            ),
          ),
        ),
      ],
    );
  }
}
