import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension PercentSize on double{
  double get hp => (Get.height * (this / 100));
  double get wp => (Get.width * (this / 100));
}

extension ResponsiveText on double{
  double get sp => Get.width / 100 * (this / 3);
}

extension HexColor on Color{
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString'; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}