import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toLowerCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class AppColor {
  static Color primaryColor = HexColor('4EBEAF');
  static Color primaryVariantColor = HexColor('85DBD0');
  static Color newGrey = HexColor('989898');
  static Color newRed = HexColor('EB5757');
  static Color newPurple = HexColor('6F5490');
}
