import 'package:logger/logger.dart';

/// This file sets up a logger instance using the `logger` package.
///
/// The `logger` instance can be used throughout the application for logging
/// messages, errors, and other information.
///
/// Usage:
/// ```dart
/// logger.d("Debug message");
/// logger.i("Info message");
/// logger.w("Warning message");
/// logger.e("Error message");
/// ```
///
/// The logger provides various methods for different log levels:
/// - `d` for debug
/// - `i` for info
/// - `w` for warning
/// - `e` for error
///
/// For more advanced usage and customization, refer to the `logger` package
/// documentation.
final Logger logger = Logger();
