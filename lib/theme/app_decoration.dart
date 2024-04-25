import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime700,
      );
  static BoxDecoration get fillLime50 => BoxDecoration(
        color: appTheme.lime50,
      );
  static BoxDecoration get fillLime800 => BoxDecoration(
        color: appTheme.lime800,
      );
  static BoxDecoration get fillLimeA => BoxDecoration(
        color: appTheme.limeA100,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );


  // Outline decorations
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: appTheme.lime700,
    border: Border.all(
      color: appTheme.black900,
      width: 3.h,
    ),
  );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
    color: appTheme.lime700,
    border: Border.all(
      color: appTheme.black900,
      width: 1.h,
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
    27.h,
  );
  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder21 => BorderRadius.circular(
        21.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder65 => BorderRadius.circular(
        65.h,
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
