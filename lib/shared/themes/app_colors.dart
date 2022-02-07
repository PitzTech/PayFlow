import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFFFF941A);
  static const grey = Color(0xFF585666);
  static const delete = Color(0xFFE83F5B);
  static const heading = Color(0xFF585666);
  static const body = Color(0xFF706E7A);
  static const stroke = Color(0xFFE3E3E6);
  static const shape = Color(0xFFFAFAFC);
  static const background = Color(0xFFFFFFFF);

  static const MaterialColor kToDark =
      MaterialColor(0xFFFF941A, <int, Color>{
    50: Color(0x00e68517), //10%
    100: Color(0x00cc7615), //20%
    200: Color(0x00b36812), //30%
    300: Color(0x00995910), //40%
    400: Color(0x00804a0d), //50%
    500: Color(0x00663b0a), //60%
    600: Color(0x004c2c08), //70%
    700: Color(0x00331e05), //80%
    800: Color(0x00190f03), //90%
    900: Color(0x00000000), //100%
  });
}
