import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/localization/lang/locale_keys.g.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/utils/widgets/buttons/buttons_import.dart';
import '../../../../core/utils/widgets/custom bottom sheet/custom_bottom_sheet.dart';
import '../../model/credentials.dart';
import '../../providers/provider.dart';
import 'email_field.dart';

///
class ForgotPasswordSheet extends StatelessWidget {
  /// A stateless widget that displays a bottom sheet for the "Forgot Password"
  ///  functionality.
  ///
  /// The `ForgotPasswordSheet` widget contains a text field for the user to
  ///  enter their email
  /// address and a button to send a password reset email. When the button is
  /// pressed, the `onTap` method is called, which triggers the password reset
  /// process using the provided
  /// email address.
  ///
  /// The widget uses the `CustomBottomSheet` to display the content, which
  /// includes:
  /// - A title indicating the purpose of the sheet.
  /// - An `EmailField` for the user to input their email address.
  /// - A `ResponsiveElevatedButton` to submit the email address for password
  /// reset.
  ///
  /// The `onTap` method interacts with the `AuthProvider` to initiate the
  /// password reset
  /// process and closes the bottom sheet upon completion.
  ///
  /// Example usage:
  /// ```dart
  /// showModalBottomSheet(
  ///   context: context,
  ///   builder: (context) => ForgotPasswordSheet(),
  /// );
  /// ```
  ///
  /// Note: This widget requires the `tr` function for localization and the
  /// `AuthProvider` for handling the password reset logic.
  ForgotPasswordSheet({super.key});
  final TextEditingController _controller = TextEditingController();

  /// The `forgotPassword` string is used as the title for the bottom sheet.
  final String forgotPassword =
      tr(LocaleKeys.auth_forgotPassword_forgotPassword);

  /// The `sendEmail` string is used as the text for the button to send the
  /// password reset email.
  final String sendEmail = tr(LocaleKeys.auth_forgotPassword_sendEmail);
  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      heightFactor: .3,
      title: forgotPassword,
      content: Padding(
        padding: const AppPadding.horizontalMSymmetric(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            EmailField(
              controller: _controller,
              textInputAction: TextInputAction.done,
            ),
            const MaxGap(AppPadding.sPadding),
            Consumer(
              builder: (context, ref, child) => ResponsiveElevatedButton(
                onPressed: () async => onTap(context, ref),
                child: Text(sendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// The `onTap` method interacts with the `AuthProvider` to initiate the
  /// password reset
  /// process and closes the bottom sheet upon completion.
  Future<void> onTap(BuildContext context, WidgetRef ref) async {
    await ref
        .read(AuthProvider.authServiceViewModelProvider)
        .forgotPassword(
          Credentials(email: _controller.text, password: ""),
        )
        .whenComplete(() {
      if (context.mounted) context.pop();
    });
  }
}
