import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '/core/resources/data_state.dart';
import '/core/resources/error_manager.dart';
import '../../constants/app_colors.dart';

/// A class that represents a custom toast message.
///
/// This class provides functionality to display custom toast messages
/// in a Flutter application. It can be used to show brief notifications
/// to the user.
final class Toast {
  Toast._();

  /// Error Toast
  static ToastificationItem showErrorToast({
    String? title,
    String? desc,
    bool dismissible = true,
    AlignmentGeometry alignment = Alignment.bottomCenter,
    EdgeInsetsGeometry? margin,
  }) =>
      toastification.show(
        title: Text(title ?? ""),
        description: Text(desc ?? ""),
        alignment: alignment,
        backgroundColor: AppColors.accentError[20],
        borderSide: BorderSide.none,
        dragToClose: dismissible,
        autoCloseDuration: dismissible ? const Duration(seconds: 3) : null,
        showProgressBar: false,
        showIcon: false,
        foregroundColor: AppColors.accentError[100],
        closeButtonShowType: CloseButtonShowType.none,
        margin: margin,
      );

  /// Success Toast
  static ToastificationItem showSuccessToast({
    String? title,
    String? desc,
    bool dismissible = true,
    AlignmentGeometry alignment = Alignment.bottomCenter,
    EdgeInsetsGeometry? margin,
  }) =>
      toastification.show(
        title: Text(title ?? ""),
        description: Text(desc ?? ""),
        alignment: alignment,
        backgroundColor: AppColors.accentSuccess[20],
        borderSide: BorderSide.none,
        dragToClose: dismissible,
        autoCloseDuration: dismissible ? const Duration(seconds: 3) : null,
        showProgressBar: false,
        showIcon: false,
        foregroundColor: AppColors.accentSuccess[100],
        closeButtonShowType: CloseButtonShowType.none,
        margin: margin,
      );

  /// Displays a toast notification based on the provided [DataState].
  ///
  /// This utility method simplifies the process of showing success or error
  /// toast messages depending on the outcome of a [DataState].
  /// It is particularly
  /// useful for handling API responses or asynchronous operations where results
  /// are wrapped in a [DataState].
  ///
  /// - If the [DataState] is of type [DataSuccess], a success toast is
  ///  displayed using the optional [successMessage].
  /// - If the [DataState] is not successful (e.g., [DataFailed]),
  ///  an error toast
  ///   is shown using the provided [errorMessage], or a default error message
  ///   derived from the [DataState.errorMessage].
  ///
  /// **Parameters**:
  /// - [dataState]: The state of the data operation to evaluate (required).
  /// - [successMessage]: A custom message for success (optional).
  /// - [errorMessage]: A custom message for failure; if not provided, a default
  ///   error message will be derived from the [dataState].
  ///
  /// **Example**:
  /// ```dart
  /// await Toast.toastDataStateMessageWrapper(
  ///   dataState: await DataState.handleDataState<dynamic>(
  ///     () => _authService.signUpWithEmail(credentials: credentials),
  ///   ),
  ///   successMessage: 'Signup successful!',
  ///   errorMessage: 'Signup failed. Please try again.',
  /// );
  /// ```
  ///
  /// This method ensures consistent feedback to users by unifying toast
  /// notification logic based on [DataState].
  static Future<ToastificationItem?> toastDataStateMessageWrapper({
    required DataState<dynamic> dataState,
    String? successMessage,
    String? errorMessage,
  }) async {
    if (dataState is DataSuccess) {
      showSuccessToast(
        desc: successMessage,
      );
    } else {
      showErrorToast(
        desc: errorMessage ??
            AppErrorText.errorMessageConverter(dataState.errorMessage),
      );
    }
    return null;
  }
}
