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
  const EmptyBox.xxSmallGap({super.key}) : super(AppPadding.xxsPadding);

  /// Creates an empty box with an extra small gap.
  ///
  /// The main axis extent of the empty box is `8.0`.
  const EmptyBox.xSmallGap({super.key}) : super(AppPadding.xsPadding);

  /// Creates an empty box with a small gap.
  ///
  /// The main axis extent of the empty box is `16.0`.
  const EmptyBox.smallGap({super.key}) : super(AppPadding.sPadding);

  /// Creates an empty box with a medium gap.
  ///
  /// The main axis extent of the empty box is `24.0`.
  const EmptyBox.mediumGap({super.key}) : super(AppPadding.mPadding);

  /// Creates an empty box with a large gap.
  ///
  /// The main axis extent of the empty box is `32.0`.
  const EmptyBox.largeGap({super.key}) : super(AppPadding.lPadding);

  /// Creates an empty box with an extra large gap.
  ///
  /// The main axis extent of the empty box is `64.0`.
  const EmptyBox.xLargeGap({super.key}) : super(AppPadding.xlPadding);
}
