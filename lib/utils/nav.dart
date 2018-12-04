import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator
        .of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  static void error(BuildContext context) {
    Navigator.pushNamed(context, "/error");
  }

}
