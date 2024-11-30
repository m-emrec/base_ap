part of 'buttons_import.dart';

// ignore: public_member_api_docs
class ResponsiveElevatedButton extends StatefulWidget {
  /// A responsive elevated button that shows a loading indicator when pressed.
  ///
  /// The [ResponsiveElevatedButton] widget is a stateful widget that displays an
  /// elevated button with a loading indicator. It supports primary and secondary
  /// styles with different shadow effects.
  ///
  /// The button's loading state is managed internally and can be triggered by
  /// the [onPressed] callback.
  ///
  /// The [isPrimary] parameter determines whether the button uses the primary
  /// or secondary style. The [child] parameter is the content of the button,
  /// and the [onPressed] parameter is the callback function to be executed when
  /// the button is pressed.
  ///
  /// Example usage:
  /// ```dart
  /// ResponsiveElevatedButton(
  ///   onPressed: () async {
  ///     // Perform some asynchronous operation
  ///   },
  ///   child: Text('Press Me'),
  ///   isPrimary: true,
  /// )
  /// ```
  const ResponsiveElevatedButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.isPrimary = true,
  });

  /// The [isPrimary] parameter determines whether the button uses the primary
  /// or secondary style. The [child] parameter is the content of the button,
  final bool isPrimary;
  // The [child] parameter is the content of the button,
  /// and the [onPressed] parameter is the callback function to be executed when
  /// the button is pressed.
  final Widget child;

  ///the [onPressed] parameter is the callback function to be executed when
  /// the button is pressed.
  final Future<void> Function()? onPressed;

  @override
  State<ResponsiveElevatedButton> createState() =>
      _ResponsiveElevatedButtonState();
}

class _ResponsiveElevatedButtonState extends State<ResponsiveElevatedButton> {
  bool? isLoading;

  // ignore: avoid_positional_boolean_parameters
  void setLoadingState(bool val) {
    setState(() {
      isLoading = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: widget.isPrimary ? _primaryShadows : _secondaryShadows,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.isPrimary
                    ? AppColors.primaryBlue
                    : AppColors.secondaryTeal,
              ),
              onPressed: isLoading ?? false
                  ? null
                  : () => _ManageLoadingState.setLoadingState(
                        context: context,
                        setState: setLoadingState,
                        func: widget.onPressed,
                      ),
              child: isLoading ?? false
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(),
                    )
                  : widget.child,
            ),
          ),
        ),
      ],
    );
  }

  static final List<BoxShadow> _primaryShadows = [
    const BoxShadow(
      color: Color(0x630066FF),
      blurRadius: 1,
      offset: Offset(0, 1),
    ),
    const BoxShadow(
      color: Color(0x560066FF),
      blurRadius: 2,
      offset: Offset(0, 2),
    ),
    const BoxShadow(
      color: Color(0x330066FF),
      blurRadius: 3,
      offset: Offset(0, 5),
    ),
    const BoxShadow(
      color: Color(0x0F0066FF),
      blurRadius: 4,
      offset: Offset(0, 10),
    ),
    const BoxShadow(
      color: Color(0x020066FF),
      blurRadius: 4,
      offset: Offset(0, 15),
    ),
  ];
  static final List<BoxShadow> _secondaryShadows = [
    const BoxShadow(
      color: Color(0x6302B3A6),
      blurRadius: 1,
      offset: Offset(0, 1),
    ),
    const BoxShadow(
      color: Color(0x5602B3A6),
      blurRadius: 2,
      offset: Offset(0, 2),
    ),
    const BoxShadow(
      color: Color(0x3302B3A6),
      blurRadius: 3,
      offset: Offset(0, 5),
    ),
    const BoxShadow(
      color: Color(0x0F02B3A6),
      blurRadius: 4,
      offset: Offset(0, 10),
    ),
    const BoxShadow(
      color: Color(0x0202B3A6),
      blurRadius: 4,
      offset: Offset(0, 15),
    ),
  ];
}
