import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/localization/lang/locale_keys.g.dart';
import '../../../core/utils/widgets/custom_toast.dart';
import '../model/credentials.dart';
import '../providers/provider.dart';
import '../view/sign_up.dart';

mixin SignUpMixin on ConsumerState<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isAccepted = false;

  Future<void> onTapSignUp() async {
    if (formKey.currentState?.validate() ?? false) {
      if (isAccepted) {
        await ref
            .read(AuthProvider.authServiceViewModelProvider.notifier)
            .signUpWithEmail(
              Credentials(
                  email: emailController.text,
                  password: passwordController.text),
            );
      } else {
        Toast.showErrorToast(title: pleaseAcceptTermsConditions);
      }
    }
  }

  final String pleaseAcceptTermsConditions =
      tr(LocaleKeys.auth_signup_pleaseAcceptTermsConditions);
  final String createYourAccount = tr(LocaleKeys.auth_signup_createYourAccount);
}
