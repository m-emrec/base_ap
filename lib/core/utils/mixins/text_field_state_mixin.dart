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
/// - To use this mixin, override the [validator] and [controller] variables.
///
/// **Methods:**
/// - [setColorState]: Changes the color based on the TextField state and
/// returns the appropriate color.
///
/// **Parameters to Override:**
/// - `controller`: The TextEditingController associated with the TextField.
/// - `validator`: A function to validate the TextField's input.
mixin TextFieldStateMixin<T extends StatefulWidget> on State<T> {
  /// A focus node to manage the focus state of the TextField.
  final FocusNode focusNode = FocusNode();

  /// A controller to manage the text being edited in the TextField.
  /// This controller is required to be overridden in the State class.
  /// The reason I decided to make it nullable is because it is required to be
  /// overridden in the State class, and it is not possible to make it non-nullable
  /// in the mixin.
  late TextEditingController? controller;

  /// A validator function to validate the TextField's input.
  /// This function is required to be overridden in the State class.
  late String? Function(String?)? validator;

  /// A boolean value to determine whether the TextField has focus.
  late bool _hasFocus;
  @override
  void initState() {
    super.initState();

    _hasFocus = focusNode.hasFocus;
    focusNode.addListener(_focusListener);
    controller?.addListener(setColorState);
  }

  @override
  void dispose() {
    controller
      ?..removeListener(() {})
      ..dispose();
    focusNode
      ..removeListener(() {})
      ..dispose();
    super.dispose();
  }

  void _focusListener() {
    setState(() {
      _hasFocus = focusNode.hasFocus;
    });
  }

  /// This function changes the color depending on the TextField State
  /// and returns the color.
  Color? setColorState() {
    Color? stateColor;
    bool validated = validator!(controller?.text) == null;
    if (validated) {
      /// if the TextField is validated, it will return the success color.
      stateColor = AppColors.accentSuccess[70];
      setState(() {});

      return stateColor;
    }
    if (!validated && (controller?.text.isNotEmpty ?? true)) {
      /// if the TextField is not validated and the text is not empty,
      /// it will return the error color.
      setState(() {
        stateColor = AppColors.accentError[70];
      });

      return stateColor;
    }

    if (_hasFocus) {
      /// This is just a safety check to ensure that the controller is overridden.
      /// When you focused one of the TextFields without overriding the controller,
      /// it will throw an error.
      assert(controller != null, 'Controller cannot be null');

      /// if the TextField has focus, it will return the focus color.
      stateColor = AppColors.accentOrange;
      setState(() {});
      return stateColor;
    }
    return stateColor;
  }
}
