import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// A utility class that provides predefined text styles using the Poppins font.
///
/// The `TextStyles` class contains a private method `_font` that returns a
/// `TextStyle` object with the Poppins font, and a `TextTheme` object that
/// defines various text styles for different text elements in the app.
///
/// The `_font` method accepts various parameters to customize the text style,
/// such as `background`, `backgroundColor`, `color`, `decoration`,
/// `decorationColor`, `decorationStyle`, `decorationThickness`, `fontFeatures`,
/// `fontSize`, `fontStyle`, `fontWeight`, `foreground`, `height`,
/// `letterSpacing`, `locale`, `shadows`, `textBaseline`, `textStyle`, and
/// `wordSpacing`.
///
/// The `textTheme` object defines the following text styles:
///
/// - `titleLarge`: A large title style with the primary text color.
/// - `titleMedium`: A medium title style.
/// - `titleSmall`: A small title style.
/// - `bodyLarge`: A large body text style with the primary text color.
/// - `bodyMedium`: A medium body text style with the secondary text color.
/// - `bodySmall`: A small body text style with the secondary text color.
/// - `labelLarge`: A large label style with the primary text color and medium
///   font weight.
/// - `labelMedium`: A medium label style with the primary text color, medium
///   font weight, and a font size of 12.

class TextStyles {
  /// Poppins font
  static TextStyle _font({
    Paint? background,
    Color? backgroundColor,
    Color? color,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    List<FontFeature>? fontFeatures,
    double? fontSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    Paint? foreground,
    double? height,
    double? letterSpacing,
    Locale? locale,
    List<Shadow>? shadows,
    TextBaseline? textBaseline,
    TextStyle? textStyle,
    double? wordSpacing,
  }) =>
      GoogleFonts.poppins(
        background: background,
        backgroundColor: backgroundColor,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontFeatures: fontFeatures,
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        foreground: foreground,
        height: height,
        letterSpacing: letterSpacing,
        locale: locale,
        shadows: shadows,
        textBaseline: textBaseline,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
      );

  /// The `textTheme` object defines the following text styles:
  ///
  /// - `titleLarge`: A large title style with the primary text color.
  /// - `titleMedium`: A medium title style.
  /// - `titleSmall`: A small title style.
  /// - `bodyLarge`: A large body text style with the primary text color.
  /// - `bodyMedium`: A medium body text style with the secondary text color.
  /// - `bodySmall`: A small body text style with the secondary text color.
  /// - `labelLarge`: A large label style with the primary text color and medium
  ///   font weight.
  /// - `labelMedium`: A medium label style with the primary text color, medium
  ///   font weight, and a font size of 12.
  final TextTheme textTheme = TextTheme(
    titleLarge: _font(
      foreground: Paint()..color = AppColors.primaryTextColor,
    ),
    titleMedium: _font(),
    titleSmall: _font(),

    /// Body
    bodyLarge: _font(
      color: AppColors.primaryTextColor,
    ),
    bodyMedium: _font(
      color: AppColors.secondaryTextColor,
    ),
    bodySmall: _font(
      color: AppColors.secondaryTextColor,
    ),

    /// Labels
    labelLarge: _font(
      color: AppColors.primaryTextColor,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: _font(
      color: AppColors.primaryTextColor,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  );
}
