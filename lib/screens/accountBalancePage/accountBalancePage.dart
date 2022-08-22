import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/widgets/input_field.dart';
import 'package:montra/widgets/primary_button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';

class AccountBalancePage extends StatefulWidget {
  const AccountBalancePage({Key? key}) : super(key: key);

  @override
  State<AccountBalancePage> createState() => _AccountBalancePageState();
}

class _AccountBalancePageState extends State<AccountBalancePage> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF7F3DFF),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            Icons.home,
            Icons.transform_rounded,
            Icons.pie_chart,
            Icons.person,
          ],
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          activeColor: Color(0xFF7F3DFF),
          inactiveColor: Colors.grey,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: _bottomNavIndex == 0
                ? _tabOne()
                : _bottomNavIndex == 1
                    ? _tabTwo()
                    : _bottomNavIndex == 2
                        ? _tabThree()
                        : _bottomNavIndex == 3
                            ? _tabFour()
                            : Container(
                                color: Colors.yellow,
                                width: 200.0,
                                height: 200.0,
                              ),
          ),
        ),
      ),
    );
  }

  Widget _tabOne() {
    return Column(
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
              Icons.notifications_rounded,
              color: Color(0xFF7F3DFF),
            ),
          ],
        ),
        SizedBox(
          height: 23.0,
        ),
        _accountBalanceSection(),
        _incomeExpensesSection(),
        _buildLineChart(),
        _dateSection(),
        _recentTransactionSection(),
      ],
    );
  }

  Widget _tabTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      size: 20.73,
                    ),
                    SizedBox(
                      width: 9.0,
                    ),
                    Text(
                      "Month",
                      style: regular3Dark75,
                    ),
                  ],
                ),
              ),
              Container(
                child: Icon(Icons.menu),
              ),
              SizedBox(
                height: 8.0.h,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: InputField(hint: "See your finacial report"),
            ),
          ],
        ),
        SizedBox(
          height: 21.0.h,
        ),
        Text(
          "Today",
          style: title3Dark75,
        ),
        SizedBox(
          height: 27.0.h,
        ),
        _row(
          amt: "-\$120",
          color: Colors.orange,
          date: "10:OO AM",
          desc: "Buy some grocery",
          iconPath: "assets/icons/shopping-bag.svg",
          title: "Shopping",
        ),
        const SizedBox(
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
        const SizedBox(
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
        SizedBox(
          height: 15.0.h,
        ),
        Text(
          "Yesterday",
          style: title3Dark75,
        ),
        SizedBox(
          height: 13.0.h,
        ),
        _row(
          amt: "+ 5000",
          color: Colors.green,
          date: "04:30 PM",
          desc: "Salary for july",
          iconPath: "assets/icons/salary.svg",
          title: "Salary",
        ),
        const SizedBox(
          height: 8.0,
        ),
        _row(
          amt: "-\$18",
          color: Colors.blue,
          date: "08:30 PM",
          desc: "Charging Tesla",
          iconPath: "assets/icons/car.svg",
          title: "Transportation",
        ),
        SizedBox(
          height: 13.0.h,
        ),
      ],
    );
  }

  Widget _tabThree() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.arrow_back_ios),
            Expanded(
              child: Center(
                child: Text("May"),
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
              color: Color(0xFF7F3DFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("You don't have a budget."),
                Text("Let's make one so you will be in control"),
                SizedBox(
                  height: 50.0.h,
                ),
                PrimaryButton(
                  title: "Create a budget",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _tabFour() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle_sharp,
                          size: 100.0,
                        ),
                        SizedBox(
                          width: 20.0.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Username"),
                            Text("Iriana Saliha"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.edit),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.account_balance_wallet,
                      color: Color(0xFF7F3DFF),
                    ),
                  ),
                  SizedBox(width: 10.0.w),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account",
                        style: regular1Dark75,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Color(0xFF7F3DFF),
                    ),
                  ),
                  SizedBox(width: 10.0.w),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Settings",
                        style: regular1Dark75,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.import_export,
                      color: Color(0xFF7F3DFF),
                    ),
                  ),
                  SizedBox(width: 10.0.w),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Export Data",
                        style: regular1Dark75,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0.r),
                      color: Colors.red[300],
                    ),
                    child: Icon(Icons.logout),
                  ),
                  SizedBox(width: 10.0.w),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log Out",
                        style: regular1Dark75,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildLineChart() {
    return Container(
      child: SfCartesianChart(
        // Initialize category axis
        primaryXAxis: CategoryAxis(),
        backgroundColor: Colors.white,
        title: ChartTitle(text: "Spend Frequency"),

        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
              // Bind data source
              dataSource: <SalesData>[
                SalesData('Jan', 35),
                SalesData('Feb', 28),
                SalesData('Mar', 34),
                SalesData('Apr', 32),
                SalesData('May', 40)
              ],
              color: Colors.purple,
              width: 5,
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales)
        ],
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
                          const SizedBox(
                            height: 18.0,
                          ),
                          Text(
                            "Expenses",
                            style: regular4light20,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          const Text("\$1200"),
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
        const SizedBox(
          height: 36.0,
        ),
      ],
    );
  }

  Widget _dateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
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
                  child: FittedBox(
                    child: Text(
                      "Today",
                      style: body1Light20,
                    ),
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
            const SizedBox(
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
        const SizedBox(
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
        const SizedBox(
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
              const SizedBox(
                height: 13.0,
              ),
              Text(
                desc,
                style: const TextStyle(
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
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              date,
              style: const TextStyle(
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
