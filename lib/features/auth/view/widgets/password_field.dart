import 'package:base_ap/logger.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../config/localization/lang/locale_keys.g.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/utils/mixins/text_field_state_mixin.dart';
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
    with TextFieldStateMixin<PasswordField> {
  /// A boolean value to determine whether the password is obscured.
  bool obscured = true;

  /// A validator function to validate the password input.
  ///
  /// Returns an error message if the password length is less than 6 characters.
  /// Otherwise, returns null.
  @override
  String? Function(String? p1)? get validator =>
      (value) => (value?.length ?? 0) < 6
          ? tr(LocaleKeys.auth_password_validation_error)
          : null;
  @override
  TextEditingController get controller => widget.controller;

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
      focusNode: focusNode,
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
