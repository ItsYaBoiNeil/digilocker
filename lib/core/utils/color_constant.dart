import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007e = fromHex('#7e000000');

  static Color blueGray50 = fromHex('#f1f2f2');

  static Color indigoA200 = fromHex('#5468ff');

  static Color lightBlue400 = fromHex('#32aef4');

  static Color gray50 = fromHex('#fcfcfc');

  static Color green400 = fromHex('#53b175');

  static Color gray50B2 = fromHex('#b2fcfcfc');

  static Color black90001 = fromHex('#000000');

  static Color black900 = fromHex('#030303');

  static Color blueGray800 = fromHex('#334355');

  static Color whiteA7008c = fromHex('#8cfefefe');

  static Color black90002 = fromHex('#000000');

  static Color gray5099 = fromHex('#99fcfcfc');

  static Color gray600 = fromHex('#7c7c7c');

  static Color gray400 = fromHex('#b1b1b1');

  static Color gray60001 = fromHex('#848484');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color indigo50 = fromHex('#e7eaef');

  static Color gray90000 = fromHex('#000d1727');

  static Color gray800 = fromHex('#4c4e4d');

  static Color gray900 = fromHex('#181725');

  static Color gray90001 = fromHex('#181b19');

  static Color indigo507f = fromHex('#7fe6eaf3');

  static Color gray300 = fromHex('#e2e2e2');

  static Color gray100 = fromHex('#f2f3f2');

  static Color gray40001 = fromHex('#b3b3b3');

  static Color whiteA70001 = fromHex('#ffffff');

  static Color whiteA70002 = fromHex('#ffffff');

  static Color whiteA700 = fromHex('#fff9ff');

  static Color gray300B2 = fromHex('#b2e2e2e2');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
