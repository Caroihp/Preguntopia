import 'package:flutter/material.dart';
import 'package:preguntopia/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray700,
      );

  static BoxDecoration get fillred => BoxDecoration(
        color: appTheme.red800,
      );

  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange800,
      );

  static BoxDecoration get fillgreen => BoxDecoration(
        color: appTheme.green800,
      );

  static BoxDecoration get fillblue => BoxDecoration(
        color: appTheme.blue800,
      );

  static BoxDecoration get fillblue2 => BoxDecoration(
        color: appTheme.blue2800,
      );

  static BoxDecoration get fillyellow => BoxDecoration(
        color: appTheme.yellow800,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.blueGray300.withOpacity(0.62),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 4.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get roundedBorder72 => BorderRadius.circular(
        72.h,
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
