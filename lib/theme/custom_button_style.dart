import 'dart:ui';
import 'package:dod1212com_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillDeepPurpleA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepPurpleA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineSecondaryContainer => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        side: BorderSide(
          color: theme.colorScheme.secondaryContainer,
          width: 3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
