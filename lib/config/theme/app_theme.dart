import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_paddings.dart';
import '../../core/constants/border_radiuses.dart';
import '../../core/constants/text_styles.dart';
import 'theme_extensions/inline_text_button_theme.dart';

/// A class that defines the application's theme settings.
///
/// This class provides a `lightTheme` getter that returns a `ThemeData` object
/// configured with various theme settings such as colors, text styles, and
/// widget themes.
///
/// The following widget themes are defined:
/// - `AppBarTheme`: Configures the appearance of the app bar.
/// - `ElevatedButtonThemeData`: Configures the appearance of elevated buttons.
/// - `PopupMenuThemeData`: Configures the appearance of popup menus.
/// - `OutlinedButtonThemeData`: Configures the appearance of outlined buttons.
/// - `TextButtonThemeData`: Configures the appearance of text buttons.
/// - `InputDecorationTheme`: Configures the appearance of input decorations.
/// - `CheckboxThemeData`: Configures the appearance of checkboxes.
/// - `ProgressIndicatorThemeData`: Configures the appearance of progress
/// indicators.
/// - `FloatingActionButtonThemeData`: Configures the appearance of floating
/// action buttons.
/// - `DatePickerThemeData`: Configures the appearance of date pickers.
///
/// Additionally, the class defines a set of theme extensions using
/// `ThemeExtension`.
///
/// Example usage:
/// ```dart
/// final ThemeData theme = AppTheme().lightTheme;
/// ```

class AppTheme {
  /// A getter that returns the light theme configuration for the application.
  ///
  /// This getter provides access to the predefined light theme settings,
  /// which can be used to style the application's UI components with a light
  /// color scheme.
  ///
  /// Returns:
  ///   A [ThemeData] object representing the light theme configuration.
  ThemeData get lightTheme => _lightTheme;
  final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.neutralBackgroundLight[50],
    primaryColor: AppColors.primaryBlue[50],
    textTheme: TextStyles().textTheme,

    /// Widget Themes
    appBarTheme: _appBarTheme(),
    elevatedButtonTheme: _elevatedButtonTheme(),
    popupMenuTheme: _popMenuTheme(),
    outlinedButtonTheme: _outlinedButtonTheme(),
    textButtonTheme: _textButtonTheme(),
    inputDecorationTheme: _inputDecoration(),
    extensions: _extensions,
    checkboxTheme: _checkboxTheme(),
    progressIndicatorTheme: _progressIndicatorTheme(),
    floatingActionButtonTheme: _floatingActionButtonTheme(),
    datePickerTheme: _datePickerTheme(),
  );

  // MARK: PopupMenuThemeData
  static PopupMenuThemeData _popMenuTheme() {
    return PopupMenuThemeData(
      color: AppColors.neutralBackgroundLight[50],
      shape: RoundedRectangleBorder(
        borderRadius: AppBorderRadius.smallBorderRadius,
      ),
      position: PopupMenuPosition.under,
    );
  }

  // MARK: DatePickerThemeData
  static DatePickerThemeData _datePickerTheme() => DatePickerThemeData(
        backgroundColor: AppColors.neutralBackgroundLight[10],
        cancelButtonStyle: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(
            AppColors.accentError[50],
          ),
        ),
        confirmButtonStyle: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(
            AppColors.accentSuccess[80],
          ),
        ),
        dayBackgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.secondaryLightTeal[20];
            }
            return null;
          },
        ),
        dayForegroundColor:
            WidgetStatePropertyAll(AppColors.neutralGray900[50]),
        todayBorder: BorderSide.none,
        todayForegroundColor: WidgetStatePropertyAll(
          AppColors.primaryBlue[70],
        ),
        todayBackgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.secondaryLightTeal[20];
            }
            return null;
          },
        ),
      );

  // MARK: FloatingActionButtonThemeData
  static FloatingActionButtonThemeData _floatingActionButtonTheme() =>
      FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryBlue[50],
        foregroundColor: AppColors.neutralGray100[50],
        elevation: 3,
      );

  // MARK: ProgressIndicatorThemeData
  static ProgressIndicatorThemeData _progressIndicatorTheme() =>
      ProgressIndicatorThemeData(
        color: AppColors.secondaryTeal[30],
      );

  // MARK: CheckboxThemeData
  static CheckboxThemeData _checkboxTheme() => CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.accentSuccess[90]!;
            }
            return Colors.transparent;
          },
        ),
        shape: const CircleBorder(),
        side: BorderSide(
          color: AppColors.secondaryLightTeal,
          width: 2.5,
        ),
      );

  // MARK: Theme Extensions
  static final Iterable<ThemeExtension<dynamic>> _extensions = [
    InlineTextButtonTheme(
      style: TextStyles()
          .textTheme
          .labelLarge
          ?.copyWith(color: AppColors.accentOrange),
    ),
  ];

  // MARK: InputDecorationTheme
  static InputDecorationTheme _inputDecoration() {
    return InputDecorationTheme(
      labelStyle: TextStyles().textTheme.bodyLarge?.copyWith(
            color: AppColors.neutralGray500[40],
          ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.accentError[40]!,
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.accentError[40]!,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.neutralGray500[50]!,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.accentOrange,
        ),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      contentPadding: EdgeInsets.symmetric(
        vertical: AppPadding.xsPadding,
        horizontal: AppPadding.xsPadding,
      ),
    );
  }

  // MARK: AppBarTheme
  static AppBarTheme _appBarTheme() {
    return AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: AppColors.secondaryTeal[50],
      ),
      color: AppColors.neutralBackgroundLight[50],
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.neutralBackgroundLight.withOpacity(0.1),
        systemNavigationBarColor: AppColors.neutralBackgroundLight,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  // MARK: TextButtonThemeData
  static TextButtonThemeData _textButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyles().textTheme.labelMedium,
        foregroundColor: AppColors.secondaryTextColor,
      ),
    );
  }

// MARK: OutlinedButtonThemeData
  static OutlinedButtonThemeData _outlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        // Colors
        backgroundColor: AppColors.neutralBackgroundLight,
        foregroundColor: AppColors.secondaryTeal,
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.mPadding,
          vertical: AppPadding.sPadding,
        ),
        maximumSize: const Size.fromHeight(52),
        side: BorderSide(color: AppColors.secondaryLightTeal),
        shape: RoundedRectangleBorder(
          borderRadius: AppBorderRadius.smallBorderRadius,
        ),
      ),
    );
  }

  //MARK: Elevated Button theme
  static ElevatedButtonThemeData _elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.primaryBlue[0],
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.mPadding,
          vertical: AppPadding.sPadding,
        ),
        maximumSize: const Size.fromHeight(52),
        shape: RoundedRectangleBorder(
          borderRadius: AppBorderRadius.smallBorderRadius,
        ),
      ),
    );
  }
}
