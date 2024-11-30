// ignore_for_file: public_member_api_docs

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../config/localization/lang/locale_keys.g.dart';
import '../../../../core/constants/app_paddings.dart';
import '../../../../core/utils/widgets/custom bottom sheet/custom_bottom_sheet.dart';
import 'email_field.dart';
import 'forgot_password_sheet.dart';
import 'password_field.dart';

///
class AuthForm extends StatelessWidget {
  /// AuthForm is a [StatelessWidget] that returns a [Form] widget
  /// with [EmailField] and [PasswordField] as children
  /// [showForgotPassword] is a boolean that determines if the [ForgotPasswordSheet] should be shown
  /// [formKey] is a [GlobalKey<FormState>] that is used to validate the form
  /// [emailController] is a [TextEditingController] that is used to control the email field
  /// [passwordController] is a [TextEditingController] that is used to control the password field
  /// [forgotPassword] is a string that is used as the text for the [TextButton] that shows the [ForgotPasswordSheet]
  const AuthForm({
    required this.emailController,
    required this.passwordController,
    required this.formKey,
    super.key,
    this.showForgotPassword = false,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool showForgotPassword;
  String get forgotPassword => tr(LocaleKeys.auth_signin_forgot_password);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// EmailField
          EmailField(
            controller: emailController,
          ),
          const Gap(AppPadding.mPadding),

          /// PasswordField
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PasswordField(
                controller: passwordController,
              ),

              /// if [showForgotPassword] is true , show ForgotPassword button
              Visibility(
                visible: showForgotPassword,
                child: TextButton(
                  onPressed: () => showForgotPasswordSheet(context),
                  child: Text(
                    forgotPassword,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showForgotPasswordSheet(BuildContext context) {
    CustomBottomSheet.show(
      context,
      widget: ForgotPasswordSheet(),
    );
  }
}
