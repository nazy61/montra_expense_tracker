import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function? onPressed;
  final bool loading;

  const SecondaryButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loading
        ? Platform.isAndroid
            ? const Center(child: CircularProgressIndicator())
            : const Center(child: CupertinoActivityIndicator())
        : SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0.r),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  AppCustomColors.violet[100]!,
                ),
              ),
              onPressed: () => onPressed!(),
              child: Text(
                title,
                style: title3Violett100,
              ),
            ),
          );
  }
}
