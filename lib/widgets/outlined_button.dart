import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';

class OutlinedButtons extends StatelessWidget {
  final String title;
  final Function? onPressed;
  final bool loading;
  final Widget? icon;

  const OutlinedButtons({
    Key? key,
    required this.title,
    this.onPressed,
    this.loading = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loading
        ? Platform.isAndroid
            ? const Center(child: CircularProgressIndicator())
            : const Center(child: CupertinoActivityIndicator())
        : SizedBox(
            width: double.infinity,
            child: icon == null
                ? OutlinedButton(
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(15)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0.r),
                        ),
                      ),
                    ),
                    onPressed: () => onPressed!(),
                    child: Text(
                      title,
                      style: title3Dark75,
                    ),
                  )
                : OutlinedButton.icon(
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(15)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0.r),
                        ),
                      ),
                    ),
                    onPressed: () => onPressed!(),
                    icon: icon!,
                    label: Text(
                      title,
                      style: title3Dark75,
                    ),
                  ),
          );
  }
}
