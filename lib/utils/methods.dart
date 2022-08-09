import 'package:flutter/material.dart';

class AppCustomMethods {
  static navigateCloseAll(page, context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false,
    );
  }
}
