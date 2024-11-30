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
  final void Function()? onTap;
  final BuildContext context;
  @override
  GestureRecognizer? get recognizer => TapGestureRecognizer()..onTap = onTap;
}
