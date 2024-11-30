part of buttons_import;

/// Use [setLoadingState] function to show a [CircularProgressIndicator] on the button.
///
class _ManageLoadingState {
  /// I use this Function to show a [CircularProgressIndicator] on the Button
  /// and I block user interaction with [showDialog].
  ///
  /// This way user can't interact with something before the given Function completes
  ///
  ///### Parameters
  /// It takes [BuildContext] to use [showDialog]
  ///
  /// A [Function] func to execute
  ///
  /// and another [Function]setState to set the state of the button
  static Future<void> setLoadingState({
    required BuildContext context,
    required Function setState,
    Function? func,
  }) async {
    if (func != null) {
      setState(true);

      unawaited(
        showDialog(
          context: context,
          barrierColor: Colors.transparent,
          barrierDismissible: false,
          builder: (context) {
            return const PopScope(
              canPop: false,
              child: SizedBox(),
            );
          },
        ),
      );
      await func();
      setState(false);
      if (context.mounted) {
        context.pop();
      }
    }
  }
}
