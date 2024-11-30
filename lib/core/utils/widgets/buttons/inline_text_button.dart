import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../config/theme/theme_extensions/inline_text_button_theme.dart';
import '../../../extensions/context_extension.dart';

/// It is made for using a Clickable text in TextSpan widget.
///
/// it needs a
///
/// [BuildContext] context to use theme.
///
/// And a [Function] to execute.
class InlineTextButton extends TextSpan {
  /// A custom inline text button widget.
  ///
  /// This button is designed to be used inline with other text elements.
  /// It provides a convenient way to create text buttons that blend seamlessly
  /// with surrounding text.
  ///
  /// Example usage:
  /// ```dart
  /// InlineTextButton(
  ///   onPressed: () {
  ///     // Handle button press
  ///   },
  ///   child: Text('Click me'),
  /// )
  /// ```
  ///
  /// The [onPressed] callback is triggered when the button is pressed.
  /// The [child] widget is typically a [Text] widget that represents the button's label.
  const InlineTextButton(
    this.context, {
    super.text,
    // super.style,
    super.children,
    this.onTap,
  });
  @override
  TextStyle? get style =>
      context.theme.extension<InlineTextButtonTheme>()?.style;

  /// The [Function] to execute when the button is pressed.
  final void Function()? onTap;

  /// The [BuildContext] is needed to use the theme.
  final BuildContext context;
  @override
  GestureRecognizer? get recognizer => TapGestureRecognizer()..onTap = onTap;
}
