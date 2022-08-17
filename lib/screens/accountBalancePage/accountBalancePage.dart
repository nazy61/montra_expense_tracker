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
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Transaction",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock),
              label: "Budget",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7F3DFF),
          iconSize: 40,
          elevation: 5,
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
              _recentTransactionSection(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 26.0,
          ),
          Text(
            "Spend frequency",
            style: title3Dark75,
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

  Widget _recentTransactionSection() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Recent Transaction",
                style: title3Dark75,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: regular3Violet100,
              ),
            ),
          ],
        ),
        _rowOne(),
        SizedBox(
          height: 8.0,
        ),
        _rowTwo(),
        SizedBox(
          height: 8.0,
        ),
        _rowTwo(),
      ],
    );
  }

  Widget _rowOne() {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Icon(
            Icons.cabin,
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Shopping",
                style: regular1Dark75,
              ),
              SizedBox(
                height: 13.0,
              ),
              Text(
                "Buy some gorcery",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              "-120",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "10:00 AM",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }

  Widget _rowTwo() {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Icon(
            Icons.subject_sharp,
            color: Colors.purple,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Subscription",
                style: regular1Dark75,
              ),
              SizedBox(
                height: 13.0,
              ),
              Text(
                "Disney + Annual..",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              "-80",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "03:30 PM",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }

  Widget _rowThree() {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Icon(
            Icons.food_bank_rounded,
            color: Colors.purple,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Food",
                style: regular1Dark75,
              ),
              SizedBox(
                height: 13.0,
              ),
              Text(
                "Buy me ramen",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              "-32",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "07:30 PM",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
