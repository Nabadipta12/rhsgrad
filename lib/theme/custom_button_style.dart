import 'dart:ui';
import 'package:rhsgrad/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineBlackF => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              26.h,
            ),
            topRight: Radius.circular(
              25.h,
            ),
            bottomLeft: Radius.circular(
              26.h,
            ),
            bottomRight: Radius.circular(
              25.h,
            ),
          ),
        ),
        shadowColor: appTheme.black9003f,
        elevation: 5,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
