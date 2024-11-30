import 'package:flutter/material.dart';

/// The [ContextExtension] class provides various helper getters on
/// [BuildContext].
///
/// - [theme]: Accesses the [ThemeData] object using [Theme.of(this)].
/// - [textTheme]: Accesses the [TextTheme] object using
/// [Theme.of(this).textTheme].
/// - [mediaQuery]: Accesses the [MediaQueryData] object using
/// [MediaQuery.of(this)].
extension ContextExtension on BuildContext {
  /// Extension methods for BuildContext to easily access common properties.
  ///
  /// Provides convenient access to:
  /// - [ThemeData] via the `theme` getter.
  ThemeData get theme => Theme.of(this);

  /// - [TextTheme] via the `textTheme` getter.
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// - [MediaQueryData] via the `mediaQuery` getter.
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
