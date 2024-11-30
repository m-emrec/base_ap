import 'package:flutter/material.dart';

/// A utility class that defines commonly used border radius values for the application.
class AppBorderRadius {
  /// A small border radius with a value of 8 pixels.
  static BorderRadiusGeometry smallBorderRadius =
      BorderRadius.circular(smallRadiusValue);

  /// A medium border radius with a value of 16 pixels.
  static BorderRadiusGeometry mediumBorderRadius =
      BorderRadius.circular(mediumRadiusValue);

  /// A large border radius with a value of 32 pixels.
  static BorderRadiusGeometry largeBorderRadius =
      BorderRadius.circular(largeRadiusValue);

  /// The value for a small border radius, which is 8 pixels.
  static double smallRadiusValue = 8;

  /// The value for a medium border radius, which is 16 pixels.
  static double mediumRadiusValue = 16;

  /// The value for a large border radius, which is 32 pixels.
  static double largeRadiusValue = 32;
}
