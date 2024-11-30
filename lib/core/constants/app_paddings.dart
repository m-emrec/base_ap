import 'package:flutter/material.dart';

/// A utility class that provides predefined padding values and EdgeInsets
/// configurations for consistent spacing throughout the app.
class AppPaddings {
  /// EdgeInsets with symmetric horizontal padding of 24.
  static EdgeInsets authHPadding = EdgeInsets.symmetric(horizontal: mPadding);

  /// Extra extra small padding value of 4.
  static double xxsPadding = 4;

  /// Extra small padding value of 8.
  static double xsPadding = 8;

  /// Small padding value of 16.
  static double sPadding = 16;

  /// Medium padding value of 24.
  static double mPadding = 24;

  /// Large padding value of 32.
  static double lPadding = 32;

  /// Extra large padding value of 64.
  static double xlPadding = 64;

  /// EdgeInsets with symmetric horizontal small padding.
  static EdgeInsets smallHPadding = EdgeInsets.symmetric(horizontal: sPadding);

  /// EdgeInsets with symmetric horizontal medium padding.
  static EdgeInsets mediumHPadding = EdgeInsets.symmetric(horizontal: mPadding);

  /// EdgeInsets with symmetric horizontal large padding.
  static EdgeInsets largeHPadding = EdgeInsets.symmetric(horizontal: lPadding);

  /// EdgeInsets with symmetric horizontal extra large padding.
  static EdgeInsets xLargeHPadding =
      EdgeInsets.symmetric(horizontal: xlPadding);

  /// EdgeInsets with symmetric vertical small padding.
  static EdgeInsets smallVPadding = EdgeInsets.symmetric(vertical: sPadding);

  /// EdgeInsets with symmetric vertical medium padding.
  static EdgeInsets mediumVPadding = EdgeInsets.symmetric(vertical: mPadding);

  /// EdgeInsets with symmetric vertical large padding.
  static EdgeInsets largeVPadding = EdgeInsets.symmetric(vertical: lPadding);

  /// EdgeInsets with symmetric vertical extra large padding.
  static EdgeInsets xLargeVPadding = EdgeInsets.symmetric(vertical: xlPadding);

  /// EdgeInsets with all sides small padding.
  static EdgeInsets smallPadding = EdgeInsets.all(sPadding);

  /// EdgeInsets with all sides medium padding.
  static EdgeInsets mediumPadding = EdgeInsets.all(mPadding);

  /// EdgeInsets with all sides large padding.
  static EdgeInsets largePadding = EdgeInsets.all(lPadding);

  /// EdgeInsets with all sides extra large padding.
  static EdgeInsets xLargePadding = EdgeInsets.all(xlPadding);

  /// EdgeInsets with small padding only on specified sides.
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  static EdgeInsets smallOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) {
    return EdgeInsets.only(
      left: left ? sPadding : 0,
      right: right ? sPadding : 0,
      top: top ? sPadding : 0,
      bottom: bottom ? sPadding : 0,
    );
  }

  /// EdgeInsets with medium padding only on specified sides.
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  static EdgeInsets mediumOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) {
    return EdgeInsets.only(
      left: left ? mPadding : 0,
      right: right ? mPadding : 0,
      top: top ? mPadding : 0,
      bottom: bottom ? mPadding : 0,
    );
  }

  /// EdgeInsets with large padding only on specified sides.
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  static EdgeInsets largeOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) {
    return EdgeInsets.only(
      left: left ? lPadding : 0,
      right: right ? lPadding : 0,
      top: top ? lPadding : 0,
      bottom: bottom ? lPadding : 0,
    );
  }

  /// EdgeInsets with extra large padding only on specified sides.
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  static EdgeInsets xLargeOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) {
    return EdgeInsets.only(
      left: left ? xlPadding : 0,
      right: right ? xlPadding : 0,
      top: top ? xlPadding : 0,
      bottom: bottom ? xlPadding : 0,
    );
  }
}
