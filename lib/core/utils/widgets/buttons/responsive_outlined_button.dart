part of buttons_import;

///
class ResponsiveOutlinedButton extends StatefulWidget {
  /// A responsive outlined button that shows a loading indicator when pressed.
  ///
  /// This widget must be wrapped with a [Row] widget.
  ///
  /// The button expands to fill the available horizontal space within the [Row]
  ///
  /// The button's appearance can be customized using the [style] parameter.
  ///
  /// The [onPressed] callback is triggered when the button is pressed. If the
  /// callback is asynchronous, the button will display a loading indicator
  /// until the callback completes.
  ///
  /// The [child] parameter is the content of the button, typically a [Text] or
  /// [Icon] widget.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// Row(
  ///   children: [
  ///     ResponsiveOutlinedButton(
  ///       onPressed: () async {
  ///         // Perform some action
  ///       },
  ///       child: Text('Press Me'),
  ///     ),
  ///   ],
  /// )
  /// ```
  const ResponsiveOutlinedButton({
    required this.child,
    super.key,
    this.onPressed,
    this.style,
  });

  /// The [child] parameter is the content of the button, typically a [Text] or
  /// [Icon] widget.
  final Widget child;

  /// The [onPressed] callback is triggered when the button is pressed. If the
  /// callback is asynchronous, the button will display a loading indicator
  /// until the callback completes.
  final Future<void> Function()? onPressed;

  /// The button's appearance can be customized using the [style] parameter
  final ButtonStyle? style;

  @override
  State<ResponsiveOutlinedButton> createState() =>
      _ResponsiveOutlinedButtonState();
}

class _ResponsiveOutlinedButtonState extends State<ResponsiveOutlinedButton> {
  bool? isLoading;

  void setLoadingState(bool val) {
    setState(() {
      isLoading = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    assert(
      context.findAncestorWidgetOfExactType<Row>() != null,
      'You have to wrap this this widget with Row !',
    );
    return Expanded(
      child: OutlinedButton(
        style: widget.style,
        onPressed: isLoading ?? false
            ? null
            : () => _ManageLoadingState.setLoadingState(
                  context: context,
                  setState: setLoadingState,
                  func: widget.onPressed,
                ),
        child: isLoading ?? false
            ? const SizedBox(
                height: 32,
                width: 32,
                child: CircularProgressIndicator(),
              )
            : widget.child,
      ),
    );
  }
}
