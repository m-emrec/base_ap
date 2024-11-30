// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:flutter/material.dart';

/// A utility class that provides predefined padding values and EdgeInsets
/// configurations for consistent spacing throughout the app.
class AppPadding extends EdgeInsets {
  /// EdgeInsets with symmetric horizontal xxsmall padding. `4`
  const AppPadding.horizontalxxSSymmetric()
      : super.symmetric(horizontal: xxsPadding);

  /// EdgeInsets with symmetric horizontal xsmall padding. `8`
  const AppPadding.horizontalxsSymmetric()
      : super.symmetric(horizontal: xsPadding);

  /// EdgeInsets with symmetric horizontal small padding. `16`
  const AppPadding.horizontalSSymmetric()
      : super.symmetric(horizontal: sPadding);

  /// EdgeInsets with symmetric horizontal medium padding. `24`
  const AppPadding.horizontalMSymmetric()
      : super.symmetric(horizontal: mPadding);

  /// EdgeInsets with symmetric horizontal large padding. `32`
  const AppPadding.horizontalLSymmetric()
      : super.symmetric(horizontal: lPadding);

  /// EdgeInsets with symmetric horizontal extra large padding. `64`
  const AppPadding.horizontalxLSymmetric()
      : super.symmetric(vertical: xlPadding);

  /// EdgeInsets with symmetric vertical xxsmall padding. `4`
  const AppPadding.verticalxxSSymmetric()
      : super.symmetric(vertical: xxsPadding);

  /// EdgeInsets with symmetric vertical xsmall padding. `8`
  const AppPadding.verticalxsSymmetric() : super.symmetric(vertical: xsPadding);

  /// EdgeInsets with symmetric vertical small padding. `16`
  const AppPadding.verticalSSymmetric() : super.symmetric(vertical: sPadding);

  /// EdgeInsets with symmetric vertical medium padding. `24`
  const AppPadding.verticalMSymmetric() : super.symmetric(vertical: mPadding);

  /// EdgeInsets with symmetric vertical large padding. `32`
  const AppPadding.verticalLSymmetric() : super.symmetric(vertical: lPadding);

  /// EdgeInsets with symmetric vertical extra large padding. `64`
  const AppPadding.verticalxLSymmetric() : super.symmetric(vertical: xlPadding);

  /// EdgeInsets with small padding only on specified sides. `4`
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  const AppPadding.xxsmallOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) : super.only(
          left: left ? xxsPadding : 0,
          right: right ? xxsPadding : 0,
          top: top ? xxsPadding : 0,
          bottom: bottom ? xxsPadding : 0,
        );

  /// EdgeInsets with small padding only on specified sides. `8`
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  const AppPadding.xsmallOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) : super.only(
          left: left ? xsPadding : 0,
          right: right ? xsPadding : 0,
          top: top ? xsPadding : 0,
          bottom: bottom ? xsPadding : 0,
        );

  /// EdgeInsets with small padding only on specified sides. `16`
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  const AppPadding.smallOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) : super.only(
          left: left ? sPadding : 0,
          right: right ? sPadding : 0,
          top: top ? sPadding : 0,
          bottom: bottom ? sPadding : 0,
        );

  /// EdgeInsets with medium padding only on specified sides. `24`
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  const AppPadding.mediumOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) : super.only(
          left: left ? mPadding : 0,
          right: right ? mPadding : 0,
          top: top ? mPadding : 0,
          bottom: bottom ? mPadding : 0,
        );

  /// EdgeInsets with large padding only on specified sides. `32`
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  const AppPadding.largeOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) : super.only(
          left: left ? lPadding : 0,
          right: right ? lPadding : 0,
          top: top ? lPadding : 0,
          bottom: bottom ? lPadding : 0,
        );

  /// EdgeInsets with extra large padding only on specified sides. `64`
  ///
  /// [left], [right], [top], and [bottom] determine which sides have padding.
  const AppPadding.xLargeOnlyPadding({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) : super.only(
          left: left ? xlPadding : 0,
          right: right ? xlPadding : 0,
          top: top ? xlPadding : 0,
          bottom: bottom ? xlPadding : 0,
        );

  /// Extra extra small padding value of 4.
  static const double xxsPadding = 4;

  /// Extra small padding value of 8.
  static const double xsPadding = 8;

  /// Small padding value of 16.
  static const double sPadding = 16;

  /// Medium padding value of 24.
  static const double mPadding = 24;

  /// Large padding value of 32.
  static const double lPadding = 32;

  /// Extra large padding value of 64.
  static const double xlPadding = 64;

  /// EdgeInsets with all sides small padding.
  static const EdgeInsets smallPadding = EdgeInsets.all(sPadding);

  /// EdgeInsets with all sides medium padding.
  static const EdgeInsets mediumPadding = EdgeInsets.all(mPadding);

  /// EdgeInsets with all sides large padding.
  static const EdgeInsets largePadding = EdgeInsets.all(lPadding);

  /// EdgeInsets with all sides extra large padding.
  static const EdgeInsets xLargePadding = EdgeInsets.all(xlPadding);
}
