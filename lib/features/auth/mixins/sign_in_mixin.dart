import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/localization/lang/locale_keys.g.dart';
import '../model/credentials.dart';
import '../providers/provider.dart';
import '../view/sign_in.dart';

mixin SignInMixin on ConsumerState<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  final String signIn = tr(LocaleKeys.auth_signin_signin);
  Future<void> onTapSignIn() async {
    if (formKey.currentState?.validate() ?? false) {
      await ref
          .read(AuthProvider.authServiceViewModelProvider.notifier)
          .signInWithEmail(
            Credentials(
                email: emailController.text, password: passwordController.text),
          );
    }
  }
}
