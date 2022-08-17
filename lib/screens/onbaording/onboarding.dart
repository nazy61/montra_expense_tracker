import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra/screens/loginPage/loginPage.dart';
import 'package:montra/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/utils.dart';
import '../screens.dart';

class OnbaordingScreen extends StatefulWidget {
  const OnbaordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbaordingScreen> createState() => _OnbaordingScreenState();
}

class _OnbaordingScreenState extends State<OnbaordingScreen> {
  PageController controller = PageController();

  @override
  void initState() {
    initialization();
    super.initState();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _page(),
            SizedBox(height: 20.0.h),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          PrimaryButton(
            title: "Sign Up",
            onPressed: () => AppCustomMethods.navigateCloseAll(
                const SignupScreen(), context),
          ),
          SizedBox(height: 20.0.h),
          SecondaryButton(
            title: "Login",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _page() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mainPart(),
            SizedBox(height: 20.0.h),
            _buildIndicators(),
          ],
        ),
      ),
    );
  }

  Widget mainPart() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView(
          controller: controller,
          onPageChanged: (page) {},
          children: [
            _buildPageData(
              imagePath: "assets/images/onboarding1.png",
              title: "Gain total control of your money",
              body: "Become your own money manager and make every cent count",
            ),
            _buildPageData(
              imagePath: "assets/images/onboarding2.png",
              title: "Know where your money goes",
              body:
                  "Track your transaction easily,with categories and financial report ",
            ),
            _buildPageData(
              imagePath: "assets/images/onboarding3.png",
              title: "Planning ahead",
              body: "Setup your budget for each categoryso you in control",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageData({
    required String imagePath,
    required String title,
    required String body,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(height: 20.0.h),
        Text(
          title,
          style: title1Dark50,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0.h),
        Text(
          body,
          style: body1Light20,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildIndicators() {
    return SmoothPageIndicator(
      controller: controller, // PageController
      count: 3,
      effect: SlideEffect(
        spacing: 8.0.w,
        radius: 20.0.r,
        dotWidth: 16.0.w,
        dotHeight: 16.0.w,
        paintStyle: PaintingStyle.stroke,
        strokeWidth: 1.5.w,
        dotColor: Colors.grey,
        activeDotColor: AppCustomColors.violet[900]!,
      ),
    );
  }
}
