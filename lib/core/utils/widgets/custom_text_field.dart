// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/text_styles.dart';

///
// ignore: must_be_immutable
class CustomTextField extends TextFormField {
  /// A custom text field widget.
  ///
  /// This widget provides a customizable text field with various properties
  /// to tailor its appearance and behavior.
  ///
  /// Example usage:
  /// ```dart
  /// CustomTextField(
  ///   // Add your parameters here
  /// )
  /// ```
  ///
  /// You can customize the following properties:
  /// - `controller`: The controller for the text field.
  /// - `focusNode`: The focus node for the text field.
  /// - `decoration`: The decoration to show around the text field.
  /// - `keyboardType`: The type of keyboard to use for editing the text.
  /// - `textInputAction`: The action button to use for the keyboard.
  /// - `style`: The style to use for the text being edited.
  /// - `textAlign`: How the text should be aligned horizontally.
  /// - `autofocus`: Whether this text field should focus itself if nothing else is already focused.
  /// - `obscureText`: Whether to hide the text being edited (e.g., for passwords).
  /// - `maxLines`: The maximum number of lines to show at one time.
  /// - `onChanged`: Called when the text being edited changes.
  /// - `onSubmitted`: Called when the user indicates that they are done editing the text in the field.
  CustomTextField({
    super.key,
    super.controller,
    super.validator,
    this.label,
    super.autofillHints,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.done,
    this.helperText,
    this.suffix,
    super.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.obscured = false,
    this.focusNode,
    this.prefixIcon,
    this.color,
  });

  final Color? color;
  final FocusNode? focusNode;
  final String? label;
  bool obscured;
  Widget? prefixIcon;
  final TextInputType? keyboardType;
  TextCapitalization textCapitalization;
  TextInputAction textInputAction;
  String? helperText;
  Widget? suffix;

  @override
  FormFieldBuilder<String> get builder => (state) {
        return TextFormField(
          focusNode: focusNode,
          validator: validator,
          style: TextStyles().textTheme.bodyLarge,
          textCapitalization: textCapitalization,
          controller: controller,
          obscureText: obscured,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            errorText: state.errorText,
            helperText: helperText,
            labelText: label,
            suffix: suffix,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color ?? AppColors.neutralGray500[40]!,
              ),
            ),
            prefixIcon: prefixIcon == null
                ? null
                : ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      color ?? Colors.transparent,
                      BlendMode.srcATop,
                    ),
                    child: prefixIcon,
                  ),
          ),
        );
      };
}
