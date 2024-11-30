import 'package:flutter/material.dart';

///
class CustomBottomSheetTheme extends ThemeExtension<CustomBottomSheetTheme> {
  /// A custom theme extension for Bottom Sheets in a Flutter application.
  ///
  /// This class allows you to define custom colors for the shadow, handle,
  /// and background
  /// of Bottom Sheets. It extends the [ThemeExtension] class, enabling you
  /// to integrate
  /// it seamlessly with the Flutter theming system.
  ///
  /// The [CustomBottomSheetTheme] class provides methods to interpolate between
  /// two instances of the theme ([lerp]) and to create a copy of the theme
  /// with modified
  /// properties ([copyWith]).
  ///
  /// Properties:
  /// - [shadowColor]: The color of the shadow of the Bottom Sheet.
  /// - [handleColor]: The color of the handle of the Bottom Sheet.
  /// - [backgroundColor]: The background color of the Bottom Sheet.
  ///
  /// Example usage:
  /// ```dart
  /// ThemeData(
  ///   extensions: <ThemeExtension<dynamic>>[
  ///     CustomBottomSheetTheme(
  ///       shadowColor: Colors.black54,
  ///       handleColor: Colors.grey,
  ///       backgroundColor: Colors.white,
  ///     ),
  ///   ],
  /// );/// A custom theme extension for Bottom Sheets in a Flutter application.
  ///
  /// This class allows you to define custom colors for the shadow, handle,
  /// and background
  /// of Bottom Sheets. It extends the [ThemeExtension] class, enabling you
  /// to integrate
  /// it seamlessly with the Flutter theming system.
  ///
  /// The [CustomBottomSheetTheme] class provides methods to interpolate between
  /// two instances of the theme ([lerp]) and to create a copy of the theme
  /// with modified
  /// properties ([copyWith]).
  ///
  /// Properties:
  /// - [shadowColor]: The color of the shadow of the Bottom Sheet.
  /// - [handleColor]: The color of the handle of the Bottom Sheet.
  /// - [backgroundColor]: The background color of the Bottom Sheet.
  ///
  /// Example usage:
  /// ```dart
  /// ThemeData(
  ///   extensions: <ThemeExtension<dynamic>>[
  ///     CustomBottomSheetTheme(
  ///       shadowColor: Colors.black54,
  ///       handleColor: Colors.grey,
  ///       backgroundColor: Colors.white,
  ///     ),
  ///   ],
  /// );
  CustomBottomSheetTheme({
    this.shadowColor,
    this.handleColor,
    this.backgroundColor,
  });

  /// The color of the shadow for the custom bottom sheet.
  ///
  /// This color is used to render the shadow effect around the bottom sheet.
  final Color? shadowColor;

  /// The color of the handle for the custom bottom sheet.
  ///
  /// This color is used to render the handle that allows users to drag the
  /// bottom sheet.
  final Color? handleColor;

  /// The background color of the custom bottom sheet.
  ///
  /// This color is used to render the background of the bottom sheet.
  final Color? backgroundColor;

  @override
  CustomBottomSheetTheme lerp(
    ThemeExtension<CustomBottomSheetTheme>? other,
    double t,
  ) {
    if (other is! CustomBottomSheetTheme) return this;
    return CustomBottomSheetTheme(
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t),
      handleColor: Color.lerp(handleColor, other.handleColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
    );
  }

  @override
  ThemeExtension<CustomBottomSheetTheme> copyWith({
    Color? shadowColor,
    Color? handleColor,
    Color? backgroundColor,
  }) {
    return CustomBottomSheetTheme(
      shadowColor: shadowColor ?? this.shadowColor,
      handleColor: handleColor ?? this.handleColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
