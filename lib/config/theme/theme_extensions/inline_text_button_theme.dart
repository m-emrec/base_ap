import 'package:flutter/material.dart';

///
class InlineTextButtonTheme extends ThemeExtension<InlineTextButtonTheme> {
  /// A custom theme extension for inline text buttons.
  ///
  /// This class allows you to define a custom theme for inline text buttons
  /// by extending the [ThemeExtension] class. It provides a way to specify
  /// a [TextStyle] for the inline text buttons and includes methods for
  /// copying and interpolating (lerping) the theme.
  ///
  /// The [InlineTextButtonTheme] class includes:
  /// - A [TextStyle] property to define the style of the inline text buttons.
  /// - A [copyWith] method to create a copy of the theme with
  /// updated properties.
  /// - A [lerp] method to interpolate between two [InlineTextButtonTheme]
  /// instances.
  InlineTextButtonTheme({this.style});

  /// The text style to apply to the inline text button.
  ///
  /// This property allows you to customize the appearance of the text
  /// within the button, such as font size, weight, color, etc.
  ///
  /// If no style is provided, the default text style will be used.
  final TextStyle? style;

  @override
  ThemeExtension<InlineTextButtonTheme> copyWith({
    TextStyle? style,
  }) =>
      InlineTextButtonTheme(
        style: style ?? this.style,
      );

  @override
  ThemeExtension<InlineTextButtonTheme> lerp(
    covariant ThemeExtension<InlineTextButtonTheme>? other,
    double t,
  ) {
    if (other is! InlineTextButtonTheme) {
      return this;
    }
    return InlineTextButtonTheme(
      style: TextStyle.lerp(style, other.style, t),
    );
  }
}
