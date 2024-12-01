import 'package:flutter/material.dart';

import '/core/extensions/context_extension.dart';

/// The [MediaQueryExtension] class provides various media queries and screen
/// size-related helper getters on [BuildContext].
///
/// - [screenSize]: Accesses the screen size using [MediaQuery.of(this).size].
/// - [keyboardSize]: Accesses the keyboard size using
/// [MediaQuery.of(this).viewInsets.bottom].
/// - [dynamicWidth]: Returns a dynamic width value based on the screen width.
/// - [dynamicHeight]: Returns a dynamic height value based on the screen height
extension MediaQueryExtension on BuildContext {
  /// Extension on MediaQuery to provide convenient access to screen
  /// and keyboard sizes.
  ///
  /// Provides:
  /// - `screenSize`: The size of the screen.
  Size get screenSize => mediaQuery.size;

  /// - `keyboardSize`: The size of the keyboard when it is visible.
  double get keyboardSize => mediaQuery.viewInsets.bottom;

  /// Returns a dynamic width value based on the screen width.
  ///
  /// Usage:
  /// ``
  /// Container(
  ///   width: context.dynamicWidth(0.3)
  /// )
  /// ``
  double dynamicWidth(double? val) {
    // ignore: parameter_assignments
    val ??= 1;
    assert(val <= 1, "Value cannot be greater than 1");
    return screenSize.width * val;
  }

  /// Returns a dynamic height value based on the screen height.
  ///
  /// Usage:
  /// ``` dart
  /// Container(
  ///   height: context.dynamicHeight(0.3)
  /// )
  /// ```
  double dynamicHeight(double? val) {
    // ignore: parameter_assignments
    val ??= 1;
    assert(val <= 1, "Value cannot be greater than 1");
    return screenSize.height * val;
  }
}
