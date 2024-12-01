import 'package:base_ap/core/constants/generated/assets.gen.dart';
import 'package:flutter/material.dart';

import '../mixins/sign_in_mixin.dart';
import 'auth_barrel.dart';
part 'widgets/dont_have_account.dart';

///
class SignIn extends ConsumerStatefulWidget {
  /// Sign In Screen
  const SignIn({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> with SignInMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const AppPadding.horizontalMSymmetric(),
        child: Column(
          children: [
            Image.asset(Assets.images.logo.path),

            const Spacer(
              flex: 3,
            ),
            AuthForm(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
              showForgotPassword: true,
            ),
            const MaxGap(AppPadding.lPadding),

            // MARK: Sign In Button
            ResponsiveElevatedButton(
              onPressed: onTapSignIn,
              child: Text(signIn),
            ),
            const MaxGap(AppPadding.sPadding),

            /// Dont have an account
            const _DontHaveAnAccount(),
            const Spacer(),
            const OrDivider(),
            const MaxGap(AppPadding.lPadding),
            const GoogleSignInButton(),
          ],
        ),
      ),
    );
  }
}
