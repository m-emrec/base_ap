part of buttons_import;

/// Use [setLoadingState] function to show a [CircularProgressIndicator] on the
/// button.
///
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
