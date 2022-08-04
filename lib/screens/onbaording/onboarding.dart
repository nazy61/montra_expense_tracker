import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/widgets.dart';

class OnbaordingScreen extends StatefulWidget {
  const OnbaordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbaordingScreen> createState() => _OnbaordingScreenState();
}

class _OnbaordingScreenState extends State<OnbaordingScreen> {
  @override
  void initState() {
    initialization();
    super.initState();
  }

  void initialization() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Onbaodring Screen"),
              SizedBox(height: 20.0.h),
              PrimaryButton(title: "testing"),
              SizedBox(height: 20.0.h),
              SecondaryButton(title: "testing secondary"),
            ],
          ),
        ),
      ),
    );
  }
}
