import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/text_styles.dart';

class CustomTextField extends TextFormField {
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
