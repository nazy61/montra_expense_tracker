import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
          iconSize: 25,
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
                      child: Row(
                        children: [
                          Icon(Icons.arrow_drop_down),
                          Text("October"),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Color(0xFF7F3DFF),
                  ),
                ],
              ),
              SizedBox(
                height: 23.0,
              ),
              _accountBalanceSection(),
              _incomeExpensesSection(),
              _frequencySection(),
              _dateSection(),
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
            "\$9400",
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
            width: 168.0,
            height: 80.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.camera_alt,
                      size: 30.0,
                      color: Color(0xFF00A86B),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.0.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18.0.h,
                      ),
                      Text(
                        "Income",
                        style: regular4light20,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text("\$5000"),
                    ],
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                primary: const Color(0xFF00A86B),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Container(
            width: 168.0,
            height: 80.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.camera_alt,
                          size: 30.0,
                          color: Color(0xFFFD3C4A),
                        ),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 18.0,
                          ),
                          Text(
                            "Expenses",
                            style: regular4light20,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text("\$1200"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                primary: const Color(0xFFFD3C4A),
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
      child: Container(
        child: Row(),
      ),
    );
  }

  Widget _dateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 26.0,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0.r),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Today",
                    style: body1Light20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 24.0.w,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0.r),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Week",
                    style: body1Light20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 24.0.w,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0.r),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Month",
                    style: body1Light20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 24.0.w,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0.r),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Year",
                    style: body1Light20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 24.0.w,
            ),
          ],
        ),
      ],
    );
  }

  Widget _recentTransactionSection() {
    return Column(
      children: [
        SizedBox(
          height: 8.0.h,
        ),
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
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0.r),
                color: Color(0xFFEEE5FF),
              ),
              child: Text(
                "See all",
                style: regular3Violet100,
              ),
            ),
          ],
        ),
        _row(
          amt: "-\$120",
          color: Colors.orange,
          date: "10:OO AM",
          desc: "Buy some grocery",
          iconPath: "assets/icons/shopping-bag.svg",
          title: "Shopping",
        ),
        SizedBox(
          height: 8.0,
        ),
        _row(
          amt: "-\$80",
          color: Colors.purple,
          date: "10:OO AM",
          desc: "Netflix",
          iconPath: "assets/icons/recurring-bill.svg",
          title: "Subcription",
        ),
        SizedBox(
          height: 8.0,
        ),
        _row(
          amt: "-\$32",
          color: Colors.red,
          date: "10:OO AM",
          desc: "Buy salt",
          iconPath: "assets/icons/home.svg",
          title: "Food",
        ),
      ],
    );
  }

  Widget _row({
    required Color color,
    required String title,
    required String desc,
    required String amt,
    required String date,
    required String iconPath,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            color: color.withOpacity(0.3),
          ),
          child: SvgPicture.asset(
            iconPath,
            color: color,
          ),
        ),
        SizedBox(width: 10.0.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: regular1Dark75,
              ),
              SizedBox(
                height: 13.0,
              ),
              Text(
                desc,
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
              amt,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              date,
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
