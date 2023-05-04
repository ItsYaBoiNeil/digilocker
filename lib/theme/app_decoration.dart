import 'package:flutter/material.dart';
import 'package:digilocker/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillWhiteA7008c => BoxDecoration(
        color: ColorConstant.whiteA7008c,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get column8 => BoxDecoration();
  static BoxDecoration get gradientGray90000Gray60001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.gray90000,
            ColorConstant.gray60001,
          ],
        ),
      );
  static BoxDecoration get fillIndigo50 => BoxDecoration(
        color: ColorConstant.indigo50,
      );
  static BoxDecoration get outlineIndigo507f => BoxDecoration(
        color: ColorConstant.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.indigo507f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -12,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA70002 => BoxDecoration(
        color: ColorConstant.whiteA70002,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillGray5099 => BoxDecoration(
        color: ColorConstant.gray5099,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBL25 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        25,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        25,
      ),
    ),
  );

  static BorderRadius customBorderTL15 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
  );

  static BorderRadius roundedBorder18 = BorderRadius.circular(
    getHorizontalSize(
      18,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
