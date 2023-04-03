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
    final buffer = StringBuffer();
    if (hexColorString.length == 6 || hexColorString.length == 7) buffer.write('ff');
    buffer.write(hexColorString.replaceFirst('#', '')); // 8 char with opacity 100%
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
  '${alpha.toRadixString(16).padLeft(2, '0')}'
  '${red.toRadixString(16).padLeft(2, '0')}'
  '${green.toRadixString(16).padLeft(2, '0')}'
  '${blue.toRadixString(16).padLeft(2, '0')}';
}
