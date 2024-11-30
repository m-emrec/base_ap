import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../config/localization/lang/locale_keys.g.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/utils/mixins/text_field_validator_mixin.dart';
import '../../../../core/utils/widgets/custom_text_field.dart';

/// A custom password field widget that extends [StatefulWidget].
/// This widget provides a text field specifically for password input,
/// with functionality to toggle the visibility of the entered password.
class PasswordField extends StatefulWidget {
  /// Creates a [PasswordField] widget.
  ///
  /// The [controller] parameter is required and must not be null.
  const PasswordField({
    required this.controller,
    super.key,
  });

  /// A [TextEditingController] to control the text being edited.
  final TextEditingController controller;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField>
    with TextFieldStateMixin {
  /// A boolean value to determine whether the password is obscured.
  bool obscured = true;

  /// A [FocusNode] to manage the focus of the text field.
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    /// Initializes the state of the text field.
    ///
    /// This method sets up the text field state by calling [initTextFieldState]
    /// with the necessary parameters.
    initTextFieldState(
      setState: setState,
      focusNode: _focusNode,
      controller: widget.controller,
      validator: validator,
    );

    super.initState();
  }

  /// A validator function to validate the password input.
  ///
  /// Returns an error message if the password length is less than 6 characters.
  /// Otherwise, returns null.
  String? validator(String? value) =>
      value!.length < 6 ? tr(LocaleKeys.auth_password_validation_error) : null;

  @override
  void dispose() {
    /// Disposes the state of the text field.
    ///
    /// This method cleans up the resources used by the text field by calling
    /// [disposeTextFieldState].
    disposeTextFieldState();
    super.dispose();
  }

  /// The label text for the password field.
  final String label = tr(LocaleKeys.auth_password);

  @override
  Widget build(BuildContext context) {
    /// Builds the widget tree for the password field.
    ///
    /// This method returns a [CustomTextField] widget with the necessary
    /// configurations, including the password visibility toggle functionality.
    return CustomTextField(
      color: setColorState(),
      focusNode: _focusNode,
      obscured: obscured,
      controller: widget.controller,
      label: label,
      prefixIcon: Image.asset(
        AppAssets.passwordIconPath,
      ),
      validator: validator,
      suffix: GestureDetector(
        onTap: () {
          /// Toggles the password visibility.
          ///
          /// This method updates the [obscured] state to show or hide the
          /// password text.
          setState(() {
            obscured = !obscured;
          });
        },
        child: Icon(
          obscured ? Icons.visibility_off : Icons.visibility, // Switch icon
        ),
      ),
    );
  }
}
