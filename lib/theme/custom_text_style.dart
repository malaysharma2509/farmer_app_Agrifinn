import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/utils/size_utils.dart';
import 'package:kartikay_s_application7/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInriaSerifPrimaryContainer =>
      theme.textTheme.bodyLarge!.inriaSerif.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 14.fSize,
      );
  // Headline text style
  static get headlineLargeInterGray900 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.gray900,
      );
  // Title style
  static get titleLargeInriaSerif => theme.textTheme.titleLarge!.inriaSerif;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inriaSerif {
    return copyWith(
      fontFamily: 'Inria Serif',
    );
  }
}
