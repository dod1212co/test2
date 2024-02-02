import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeMontserratTeal500 =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: appTheme.teal500,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInterOnErrorContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
  static get displayMediumDeeporange900 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.deepOrange900,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
