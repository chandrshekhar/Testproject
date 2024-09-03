import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static final AppColor appColor = AppColor._();

  factory AppColor() {
    return appColor;
  }

  static const Color primaryColor = Color(0xfffffffff);
  static const Color secondary = Color(0xff32323e);
  static const Color whiteColor = Color(0xFFffffff);
  static const Color yellowColor = Colors.yellow;
}
