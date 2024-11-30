import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

/// This mixin helps you to manage the color state of a TextField's border and
///  prefixIcon based on different states.
///
/// It has 3 states:
/// - `Success`: returns [AppColors.accentSuccess]
/// - `Focus`: returns [AppColors.accentOrange]
/// - `Error`: returns [AppColors.accentError]
///
/// **Usage:**
/// - To use this mixin, call [initTextFieldState] inside [initState].
/// - To dispose it, call [disposeTextFieldState] inside [dispose].
///
/// **Methods:**
/// - [initTextFieldState]: Initializes the TextField state by setting up
/// listeners for focus and text changes.
/// - [disposeTextFieldState]: Disposes the TextField state by removing
/// listeners  and disposing the controller and focus node.
/// - [setColorState]: Changes the color based on the TextField state and
/// returns the appropriate color.
///
/// **Parameters for initTextFieldState:**
/// - `setState`: A function to update the state.
/// - `focusNode`: The FocusNode associated with the TextField.
/// - `controller`: The TextEditingController associated with the TextField.
/// - `validator`: A function to validate the TextField's input.
mixin TextFieldStateMixin {
  /// To use this mixin you have to call this function in the ``initState()``
  void initTextFieldState({
    required Function setState,
    required FocusNode focusNode,
    required TextEditingController controller,
    String? Function(String?)? validator,
  }) {
    _hasFocus = focusNode.hasFocus;
    _setState = setState;
    _focusNode = focusNode;
    _fieldValidator = validator;
    _controller = controller;
    _focusNode.addListener(_focusListener);
    _controller.addListener(setColorState);
  }

  /// - To dispose it, call [disposeTextFieldState] inside [dispose].
  void disposeTextFieldState() {
    _controller.removeListener(() {});
    _focusNode.removeListener(() {});
    _controller.dispose();
    _focusNode.dispose();
  }

  late bool _hasFocus;

  late Function _setState;
  late FocusNode _focusNode;
  late String? Function(String?)? _fieldValidator;
  late TextEditingController _controller;

  void _focusListener() {
    _setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  /// This function changes the color depending on the TextField State
  /// and returns the color.
  Color? setColorState() {
    Color? stateColor;
    bool validated = _fieldValidator!(_controller.text) == null;
    if (validated) {
      stateColor = AppColors.accentSuccess[70];
      _setState(() {});

      return stateColor;
    }
    if (!validated && _controller.text.isNotEmpty) {
      stateColor = AppColors.accentError[70];
      _setState(() {});

      return stateColor;
    }

    if (_hasFocus) {
      stateColor = AppColors.accentOrange;
      _setState(() {});
      return stateColor;
    }
    return stateColor;
  }
}
