import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../config/localization/lang/locale_keys.g.dart';

///
abstract class AppErrorText {
  /// We use the `AppErrorText` class to display errors that the user may
  ///encounter, in the application in a way that the user can understand.
  AppErrorText();

  /// **Structure**
  /// ```dart
  /// {
  ///   error code : User-friendly error message.
  /// }
  /// ```
  static final Map<String, String> _errorText = {
    // Error codes and their corresponding user-friendly messages
    //Firebase Auth
    "The email address is already in use by another account.": tr(LocaleKeys
        .errors_The_email_address_is_already_in_use_by_another_account),
    "The email address is badly formatted.":
        tr(LocaleKeys.errors_The_email_address_is_badly_formatted),
    "INVALID_LOGIN_CREDENTIALS":
        tr(LocaleKeys.errors_INVALID_LOGIN_CREDENTIALS),
    "invalid-api-key": tr(LocaleKeys.errors_invalid_api_key),
    "user-disabled": tr(LocaleKeys.errors_user_disabled),
    "user-not-found": tr(LocaleKeys.errors_user_not_found),
    "wrong-password": tr(LocaleKeys.errors_wrong_password),
    "email-already-in-use": tr(LocaleKeys.errors_email_already_in_use),
    "invalid-email": tr(LocaleKeys.errors_invalid_email),
    "operation-not-allowed": tr(LocaleKeys.errors_operation_not_allowed),
    "weak-password": tr(LocaleKeys.errors_weak_password),
    "provider-already-linked": tr(LocaleKeys.errors_provider_already_linked),
    "credential-already-in-use":
        tr(LocaleKeys.errors_credential_already_in_use),
    "requires-recent-login": tr(LocaleKeys.errors_requires_recent_login),
    "user-mismatch": tr(LocaleKeys.errors_user_mismatch),
    "provider-not-found": tr(LocaleKeys.errors_provider_not_found),
    "invalid-verification-code":
        tr(LocaleKeys.errors_invalid_verification_code),
    "invalid-verification-id": tr(LocaleKeys.errors_invalid_verification_id),
    "captcha-check-failed": tr(LocaleKeys.errors_captcha_check_failed),
    "app-not-authorized": tr(LocaleKeys.errors_app_not_authorized),
    "expired-action-code": tr(LocaleKeys.errors_expired_action_code),
    "invalid-action-code": tr(LocaleKeys.errors_invalid_action_code),
    "invalid-continue-uri": tr(LocaleKeys.errors_invalid_continue_uri),
    "missing-continue-uri": tr(LocaleKeys.errors_missing_continue_uri),
    "internal-error": tr(LocaleKeys.errors_internal_error),
    "invalid-tenant-id": tr(LocaleKeys.errors_invalid_tenant_id),
    "tenant-id-mismatch": tr(LocaleKeys.errors_tenant_id_mismatch),
    "unsupported-tenant-operation":
        tr(LocaleKeys.errors_unsupported_tenant_operation),
    "quota-exceeded": tr(LocaleKeys.errors_quota_exceeded),
    "tenant-not-found": tr(LocaleKeys.errors_tenant_not_found),
    "code-expired": tr(LocaleKeys.errors_code_expired),
    "user-token-expired": tr(LocaleKeys.errors_user_token_expired),
    "provider-data-not-found": tr(LocaleKeys.errors_provider_data_not_found),
    "invalid-uid": tr(LocaleKeys.errors_invalid_uid),
    "permission-denied": tr(LocaleKeys.errors_permission_denied),
    "unauthenticated": tr(LocaleKeys.errors_unauthenticated),
    "not-found": tr(LocaleKeys.errors_not_found),
    "already-exists": tr(LocaleKeys.errors_already_exists),
    "resource-exhausted": tr(LocaleKeys.errors_resource_exhausted),
    "invalid-argument": tr(LocaleKeys.errors_invalid_argument),
    "deadline-exceeded": tr(LocaleKeys.errors_deadline_exceeded),
    "aborted": tr(LocaleKeys.errors_aborted),
    "out-of-range": tr(LocaleKeys.errors_out_of_range),
    "unimplemented": tr(LocaleKeys.errors_unimplemented),
    "internal": tr(LocaleKeys.errors_internal),
    "unavailable": tr(LocaleKeys.errors_unavailable),
    "data-loss": tr(LocaleKeys.errors_data_loss),
    "cancelled": tr(LocaleKeys.errors_cancelled),
    "unknown": tr(LocaleKeys.errors_unknown),
    "account-exists-with-different-credential":
        tr(LocaleKeys.errors_account_exists_with_different_credential),
    "invalid-credential": tr(LocaleKeys.errors_invalid_credential),
    "popup-closed-by-user": tr(LocaleKeys.errors_popup_closed_by_user),
    "popup-blocked": tr(LocaleKeys.errors_popup_blocked),
    "invalid-client-id": tr(LocaleKeys.errors_invalid_client_id),
    "network-request-failed": tr(LocaleKeys.errors_network_request_failed),
    "no-such-provider": tr(LocaleKeys.errors_no_such_provider),
    "token-expired": tr(LocaleKeys.errors_token_expired),
    "user-cancelled": tr(LocaleKeys.errors_user_cancelled),
    "web-storage-unsupported": tr(LocaleKeys.errors_web_storage_unsupported),
    "invalid-user-token": tr(LocaleKeys.errors_invalid_user_token),
    "custom-token-mismatch": tr(LocaleKeys.errors_custom_token_mismatch),
    "dynamic-link-not-activated":
        tr(LocaleKeys.errors_dynamic_link_not_activated),
    "dynamic-link-not-match-config":
        tr(LocaleKeys.errors_dynamic_link_not_match_config),
  };

  /// This function takes an error code as a parameter.
  /// And it shows this error code to the user in a way they can understand.
  ///
  /// **Example :**
  /// ```dart
  /// try {
  ///   data = someMethod();
  /// } catch (errorCode) {
  ///   print(AppErrorText.errorMessageConverter(errorCode));
  /// }
  /// ```
  ///
  /// - Parameter errorCode: The error code to be converted.
  /// - Returns: A user-friendly error message corresponding to the error code.
  static String errorMessageConverter(String? errorCode) {
    late String errCode;

    /// If errorCode is not a String, try to convert it to a String.
    /// If it fails, return "Unknown error! Please try again."
    if (errorCode.runtimeType != String) {
      try {
        errCode = errorCode.toString();
      } catch (e) {
        return tr(LocaleKeys.errors_unknown);
      }
    }
    errCode = errorCode ?? "";

    /// For debug purposes
    /// This part is to make debugging easier.
    /// It will be removed when the application is released.
    if (_errorText[errCode] == null) {
      debugPrint('---UNHANDLED ERROR CODE--- \n$errCode');
    }

    /// Search for the given errorCode in [_errorText].
    /// If there is no such error code in _errorText,
    /// return "Unknown error! Please try again."
    return _errorText[errCode] ?? tr(LocaleKeys.errors_unknown);
  }
}
