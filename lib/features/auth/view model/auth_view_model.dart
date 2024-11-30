import 'package:base_ap/core/utils/widgets/custom_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../config/localization/lang/locale_keys.g.dart';
import '../model/credentials.dart';
import '../service/auth_service.dart';

/// ViewModel for handling authentication-related operations.
///
/// This class extends [ChangeNotifier] to provide state management capabilities
class AuthViewModel extends ChangeNotifier {
  /// Creates an instance of [AuthViewModel].
  ///
  /// The [authService] parameter is required to handle
  /// authentication operations
  AuthViewModel({required AuthService authService})
      : _authService = authService;

  /// The authentication service used to perform authentication operations.
  final AuthService _authService;

  /// Indicates whether an authentication operation is in progress.
  bool? isLoading;

  /// Signs in a user with email and password.
  ///
  /// The [credentials] parameter contains the user's email and password.
  Future<void> signInWithEmail(Credentials credentials) async {
    await Toast.toastDataStateMessageWrapper(
      dataState: await _authService.signInWithEmail(credentials: credentials),
      successMessage: LocaleKeys.auth_signin_successfullySignedIn.tr(),
    );
  }

  /// Signs up a user with email and password.
  ///
  /// The [credentials] parameter contains the user's email and password.
  Future<void> signUpWithEmail(Credentials credentials) async {
    await Toast.toastDataStateMessageWrapper(
      dataState: await _authService.signUpWithEmail(credentials: credentials),
      successMessage: LocaleKeys.auth_signin_successfullySignedIn.tr(),
    );
  }

  /// Signs in a user with Google authentication.
  Future<void> googleSignIn() async {
    await Toast.toastDataStateMessageWrapper(
      dataState: await _authService.signInWithGoogle(),
      successMessage: LocaleKeys.auth_signin_successfullySignedIn.tr(),
    );
  }

  /// Sends a password reset email to the user.
  ///
  /// The [credentials] parameter contains the user's email.
  Future<void> forgotPassword(Credentials credentials) async {
    await Toast.toastDataStateMessageWrapper(
      dataState: await _authService.forgotPassword(credentials: credentials),
      successMessage: LocaleKeys.auth_forgotPassword_sendResetLink.tr(),
    );
  }
}
