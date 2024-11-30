import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/theme/theme_extensions/custom_bottom_sheet_them.dart';
import '../../../extensions/context_extension.dart';
part 'custom_bottom_sheet_utils.dart';

///
class CustomBottomSheet extends StatefulWidget {
  /// A custom bottom sheet widget that can be used to display a modal bottom sheet
  /// with customizable title, content, background color, and height factor.
  ///
  /// The [CustomBottomSheet] widget is a [StatefulWidget] that allows you to
  /// create a bottom sheet with the following properties:
  ///
  /// * [title]: An optional title for the bottom sheet.
  /// * [content]: The main content of the bottom sheet, which is a [Widget].
  /// * [backgroundColor]: An optional background color for the bottom sheet.
  /// * [heightFactor]: A factor that determines the height of the bottom sheet
  ///   relative to the screen height. The default value is 0.5.
  ///
  /// Example usage:
  /// ```dart
  /// CustomBottomSheet(
  ///   title: 'My Bottom Sheet',
  ///   content: Text('This is the content of the bottom sheet.'),
  ///   backgroundColor: Colors.white,
  ///   heightFactor: 0.7,
  /// );
  /// ```
  const CustomBottomSheet({
    super.key,
    this.title,
    this.content,
    this.backgroundColor,
    this.heightFactor = .5,
  });

  ///  [title]: An optional title for the bottom sheet.
  final String? title;

  ///  [content]: The main content of the bottom sheet, which is a [Widget].
  final Widget? content;

  /// [backgroundColor]: An optional background color for the bottom sheet.
  final Color? backgroundColor;

  /// [heightFactor]: A factor that determines the height of the bottom sheet
  ///   relative to the screen height. The default value is 0.5.
  final double heightFactor;

  ///This method is used to show the bottom sheet
  ///
  ///[context] used for [showModalBottomSheet]
  ///
  ///[widget] is the widget that will be shown in the bottom sheet
  static Future<void> show(
    BuildContext context, {
    required Widget widget,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) => widget,
    );
  }

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet>
    with SingleTickerProviderStateMixin, _CustomBottomSheetUtils {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      dragHandleColor: customBottomSheetTheme?.handleColor,
      backgroundColor:
          widget.backgroundColor ?? customBottomSheetTheme?.backgroundColor,
      onClosing: () => context.pop(),
      shadowColor: customBottomSheetTheme?.shadowColor,
      elevation: 5,
      showDragHandle: true,
      animationController: animationController,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            height: isKeyboardVisible ? keyboardSize * 1.5 : null,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //MARK: Title
                Visibility(
                  visible: widget.title != null,
                  child: Text(
                    widget.title!,
                    style: context.textTheme.titleMedium,
                  ),
                ),
                // MARK: - Content
                Flexible(
                  child: Visibility(
                    visible: widget.content != null,
                    child: widget.content!,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    initializeAnimationController(this);
    super.initState();
  }
}
