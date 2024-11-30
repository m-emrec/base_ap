part of 'custom_bottom_sheet.dart';

mixin _CustomBottomSheetUtils on State<CustomBottomSheet> {
  late AnimationController animationController;

  /// This method is used to initialize the animation controller
  /// [vsync] is used for the animation controller
  void initializeAnimationController(TickerProvider vsync) {
    animationController = AnimationController(
      vsync: vsync,
      duration: Durations.medium2,
    );
    animationController
      ..forward(from: 0.1)
      ..addListener(
        () => setState(() {}),
      );
  }

  CustomBottomSheetTheme? get customBottomSheetTheme =>
      context.theme.extension<CustomBottomSheetTheme>();

  @override
  void dispose() {
    animationController
      ..removeListener(() {})
      ..dispose();
    super.dispose();
  }

  ///I get keyboard size , this way I can change the maxHeight of the
  ///BottomSheet
  double get keyboardSize => context.mediaQuery.viewInsets.bottom;
  bool get isKeyboardVisible => keyboardSize > 0;
}
