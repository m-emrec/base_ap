// ignore_for_file: lines_longer_than_80_chars

part of buttons_import;

/// Use [setLoadingState] function to show a [CircularProgressIndicator] on the
/// button.
///
/// A mixin that provides loading state management for buttons in a [StatefulWidget].
///
/// This mixin includes functionality to display a loading indicator and block user
/// interaction while an asynchronous operation is in progress.
///
/// The [isLoading] property indicates whether the loading state is active.
///
/// The [_showBarrier] method displays a modal barrier to block user interaction.
///
/// The [setLoadingState] method sets the loading state, executes the provided
/// asynchronous function, and then resets the loading state.
///
/// Example usage:
///
/// ```dart
/// class MyButton extends StatefulWidget {
///   @override
///   _MyButtonState createState() => _MyButtonState();
/// }
///
/// class _MyButtonState extends State<MyButton> with _ButtonLoadingState<MyButton> {
///   @override
///   Widget build(BuildContext context) {
///     return ElevatedButton(
///       onPressed: () {
///         setLoadingState(func: _performAsyncOperation);
///       },
///       child: isLoading ? CircularProgressIndicator() : Text('Press Me'),
///     );
///   }
///
///   Future<void> _performAsyncOperation() async {
///     // Perform some asynchronous operation
///   }
/// }
/// ```
mixin _ButtonLoadingState<T extends StatefulWidget> on State<T> {
  bool isLoading = false;

  /// Open a dialog to block the screen.
  void _showBarrier() {
    unawaited(
      showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.2),
        barrierDismissible: false,
        builder: (context) {
          return const PopScope(
            canPop: false,
            child: SizedBox(),
          );
        },
      ),
    );
  }

  /// The [setLoadingState] method sets the loading state, executes the provided
  /// asynchronous function, and then resets the loading state.
  Future<void> setLoadingState({
    Future<void> Function()? func,
  }) async {
    if (func != null) {
      setState(() {
        isLoading = true;
      });
      _showBarrier();
      await func();
      setState(() {
        isLoading = false;
      });
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        context.pop();
      }
    }
  }
}
