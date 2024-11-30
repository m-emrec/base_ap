import 'package:gap/gap.dart';

import '../../constants/app_paddings.dart';

///
class EmptyBox extends Gap {
  /// A widget that creates an empty box with a specified main axis extent.
  ///
  /// This widget can be used to add spacing between other widgets in a layout.
  ///
  /// The `EmptyBox` class provides several named constructors for common
  /// spacing values:
  ///
  /// - `EmptyBox.xxSmallGap`: Creates an empty box with an extra extra small
  /// gap.
  /// - `EmptyBox.xSmallGap`: Creates an empty box with an extra small gap.
  /// - `EmptyBox.smallGap`: Creates an empty box with a small gap.
  /// - `EmptyBox.mediumGap`: Creates an empty box with a medium gap.
  /// - `EmptyBox.largeGap`: Creates an empty box with a large gap.
  /// - `EmptyBox.xLargeGap`: Creates an empty box with an extra large gap.
  ///
  /// Each named constructor uses predefined padding values from the `AppPaddings` class.
  /// Creates an empty box with the specified main axis extent.
  ///
  // ignore: unused_element
  const EmptyBox._(super.mainAxisExtent);

  /// Creates an empty box with an extra extra small gap.
  ///
  /// The main axis extent of the empty box is `4.0`.
  EmptyBox.xxSmallGap({super.key}) : super(AppPaddings.xxsPadding);

  /// Creates an empty box with an extra small gap.
  ///
  /// The main axis extent of the empty box is `8.0`.
  EmptyBox.xSmallGap({super.key}) : super(AppPaddings.xsPadding);

  /// Creates an empty box with a small gap.
  ///
  /// The main axis extent of the empty box is `16.0`.
  EmptyBox.smallGap({super.key}) : super(AppPaddings.sPadding);

  /// Creates an empty box with a medium gap.
  ///
  /// The main axis extent of the empty box is `24.0`.
  EmptyBox.mediumGap({super.key}) : super(AppPaddings.mPadding);

  /// Creates an empty box with a large gap.
  ///
  /// The main axis extent of the empty box is `32.0`.
  EmptyBox.largeGap({super.key}) : super(AppPaddings.lPadding);

  /// Creates an empty box with an extra large gap.
  ///
  /// The main axis extent of the empty box is `64.0`.
  EmptyBox.xLargeGap({super.key}) : super(AppPaddings.xlPadding);
}
