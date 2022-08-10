import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/utils/utils.dart';
import 'package:montra/widgets/widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppCustomColors.light[900],
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sign Up", style: title3Dark75),
          backgroundColor: AppCustomColors.light[900],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              InputField(
                hint: "Name",
              ),
              SizedBox(height: 20.0.h),
              InputField(
                hint: "Email",
              ),
              SizedBox(height: 20.0.h),
              PasswordInputField(
                hint: "Password",
              ),
              SizedBox(height: 20.0.h),
              _buildTermsSection(),
              SizedBox(height: 20.0.h),
              PrimaryButton(title: "Sign Up"),
              SizedBox(height: 10.0.h),
              Text("Or with", style: regular4light20),
              SizedBox(height: 10.0.h),
              OutlinedButtons(
                title: "Sign Up with Google",
                icon: SvgPicture.asset(
                  "assets/icons/google.svg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTermsSection() {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0.r),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: "By signing up, you agree to the ",
              style: regular3Dark75,
              children: [
                TextSpan(
                  text: "Terms of service and privacy Policy",
                  style: regular3Violet100,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
