part of buttons_import;

/// A floating action button (FAB) widget that can be pressed to trigger an action.
///
/// The [FAB] widget is a [StatefulWidget] that displays a floating action button
/// with a child widget and an optional onPressed callback.
///
/// The [child] parameter is required and specifies the widget to display inside
/// the floating action button.
///
/// The [onPressed] parameter is optional and specifies a callback function to be
/// called when the button is pressed. If no callback is provided, the button will
/// be disabled.
///
/// Example usage:
/// ```dart
/// FAB(
///   child: Icon(Icons.add),
///   onPressed: () async {
///     // Perform some action
///   },
/// )
/// ```
class FAB extends StatefulWidget {
  // ignore: public_member_api_docs
  const FAB({required this.child, super.key, this.onPressed});

  /// The [child] parameter is required and specifies the widget to display
  ///  inside  the floating action button.
  final Widget child;

  /// The [onPressed] parameter is optional and specifies a callback function
  /// to  be called when the button is pressed. If no callback is provided, the
  /// button will
  final Future<void> Function()? onPressed;

  @override
  State<FAB> createState() => _FABState();
}

class _FABState extends State<FAB> with _ButtonLoadingState {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: isLoading
          ? null
          : () => setLoadingState(
                func: widget.onPressed,
              ),
      child: isLoading
          ? const SizedBox(
              height: 32,
              width: 32,
              child: CircularProgressIndicator(),
            )
          : widget.child,
    );
  }
}
