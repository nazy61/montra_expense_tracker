import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/utils.dart';

class AccountBalancePage extends StatefulWidget {
  const AccountBalancePage({Key? key}) : super(key: key);

  @override
  State<AccountBalancePage> createState() => _AccountBalancePageState();
}

class _AccountBalancePageState extends State<AccountBalancePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "null",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "null",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock),
              label: "null",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "null",
            ),
          ],
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFF7F3DFF),
          iconSize: 40,
          unselectedItemColor: Color(0xFF7A7E80),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.face),
                  SizedBox(
                    width: 98.8,
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_drop_down),
                            Text("October"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.notifications),
                ],
              ),
              SizedBox(
                height: 23.0,
              ),
              _accountBalanceSection(),
              _incomeExpensesSection(),
              _frequencySection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _accountBalanceSection() {
    return Center(
      child: Column(
        children: [
          Text(
            "Account Balance",
            style: body1Light20,
          ),
          Text(
            "£9400",
            style: title1Dark75,
          ),
          SizedBox(
            height: 27.0,
          ),
        ],
      ),
    );
  }

  Widget _incomeExpensesSection() {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.camera_alt),
                    ],
                  ),
                  Text(
                    "Income",
                    style: regular4light20,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text("£5000"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.camera_alt),
                    ],
                  ),
                  Text(
                    "Expenses",
                    style: regular4light20,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text("£1200"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 36.0,
        ),
      ],
    );
  }

  Widget _frequencySection() {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 36.0,
              ),
              Text(
                "Spend frequency",
                style: title3Dark75,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Today",
                    style: body1Light20,
                  ),
                ),
              ),
              SizedBox(
                width: 24.0,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Week",
                    style: body1Light20,
                  ),
                ),
              ),
              SizedBox(
                width: 24.0,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Month",
                    style: body1Light20,
                  ),
                ),
              ),
              SizedBox(
                width: 24.0,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Year",
                    style: body1Light20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
