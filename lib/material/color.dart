import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex (String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class color{
  static Color white = HexColor('FFFFFF');
  static Color black = HexColor('121111');
  static Color grey = HexColor('787676');
  static Color darkGrey = HexColor('292526');
  static Color lightGrey = HexColor('DFDEDE');
}