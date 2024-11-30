// ignore_for_file: public_member_api_docs

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/localization/lang/locale_keys.g.dart';
import '../model/credentials.dart';
import '../providers/provider.dart';
import '../view/sign_in.dart';

/// A mixin that provides sign-in functionality for the `SignIn` class.
///
/// This mixin should be used with classes that extend `ConsumerState<SignIn>`.
/// It provides methods and properties to handle the sign-in process.
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
              email: emailController.text,
              password: passwordController.text,
            ),
          );
    }
  }
}
