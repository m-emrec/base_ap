import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../../../config/localization/lang/locale_keys.g.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/utils/mixins/text_field_validator_mixin.dart';
import '../../../../core/utils/widgets/custom_text_field.dart';

///
class EmailField extends StatefulWidget {
  /// A custom email input field widget that extends [StatefulWidget].
  ///
  /// This widget provides a text field specifically for email input, with
  /// validation and custom styling. It uses a [TextEditingController] to
  /// manage the text being edited and a [TextInputAction] to specify the
  /// action button on the keyboard.
  ///
  /// The [EmailField] widget requires a [TextEditingController] to be passed
  /// in as a required parameter. The [textInputAction] parameter is optional
  /// and defaults to [TextInputAction.next].
  ///
  /// Example usage:
  ///
  /// ```dart
  /// EmailField(
  ///   controller: _emailController,
  ///   textInputAction: TextInputAction.done,
  /// )
  /// ```
  ///
  /// The [EmailField] widget also uses a [FocusNode] to manage the focus state
  /// and a custom validator to validate the email input.
  ///
  /// See also:
  ///
  ///   [TextEditingController], which is used to control the text being edited.
  ///   [TextInputAction], which defines the action button on the keyboard.
  ///   [FocusNode], which is used to manage the focus state of the text field.
  ///   [EmailValidator], which is used to validate the email input.
  const EmailField({
    required this.controller,
    super.key,
    this.textInputAction = TextInputAction.next,
  });

  ///[TextEditingController], which is used to control the text being edited.
  final TextEditingController controller;

  /// The [textInputAction] parameter is optional
  /// and defaults to [TextInputAction.next].
  final TextInputAction textInputAction;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> with TextFieldStateMixin {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    initTextFieldState(
      setState: setState,
      focusNode: _focusNode,
      controller: widget.controller,
      validator: validator,
    );

    super.initState();
  }

  String? validator(String? value) => EmailValidator.validate(value ?? "")
      ? null
      : tr(LocaleKeys.auth_validEmailError);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      color: setColorState(),
      focusNode: _focusNode,
      controller: widget.controller,
      label: tr(LocaleKeys.auth_email),
      prefixIcon: Image.asset(
        AppAssets.emailFieldIconPath,
      ),
      validator: validator,
      keyboardType: TextInputType.emailAddress,
      textInputAction: widget.textInputAction,
    );
  }
}
