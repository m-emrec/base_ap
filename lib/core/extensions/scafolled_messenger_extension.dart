import 'package:flutter/material.dart';

/// The [ScaffoldMessengerExtension] class provides a helper getter for showing
/// a [SnackBar] using [ScaffoldMessenger] on [BuildContext].
///
/// - [showSnack]: Shows a [SnackBar] using
/// [ScaffoldMessenger.of(this).showSnackBar(snackBar)].
extension ScaffoldMessengerExtension on BuildContext {
  /// Displays a [SnackBar] using the [ScaffoldMessenger] of the current
  /// context.
  ///
  /// This extension method allows you to easily show a [SnackBar] from any
  /// widget
  /// that has access to a [BuildContext].
  ///
  /// Example usage:
  /// ```dart
  /// context.showSnack(
  ///   SnackBar(
  ///     content: Text('This is a SnackBar message'),
  ///   ),
  /// );
  /// ```
  ///
  /// [snackBar] The [SnackBar] to be displayed.
  ///
  /// Returns a [ScaffoldFeatureController] that can be used to interact with
  /// the
  /// displayed [SnackBar], such as closing it before it is automatically
  /// dismissed.
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnack(
    SnackBar snackBar,
  ) =>
      ScaffoldMessenger.of(this).showSnackBar(snackBar);
}
