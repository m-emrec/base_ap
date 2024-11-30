import 'package:flutter/material.dart';

import '../mixins/sign_in_mixin.dart';
import 'auth_barrel.dart';

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
        padding: AppPaddings.authHPadding,
        child: Column(
          children: [
            Image.asset(AppAssets.logoPath),

            const Spacer(
              flex: 3,
            ),
            AuthForm(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
              showForgotPassword: true,
            ),
            MaxGap(AppPaddings.lPadding),

            // MARK: Sign In Button
            ResponsiveElevatedButton(
              onPressed: onTapSignIn,
              child: Text(signIn),
            ),
            MaxGap(AppPaddings.sPadding),

            /// Dont have an account
            const _DontHaveAnAccount(),
            const Spacer(),
            const OrDivider(),
            MaxGap(AppPaddings.lPadding),
            GoogleSignInButton(),
          ],
        ),
      ),
    );
  }
}

class _DontHaveAnAccount extends StatelessWidget {
  const _DontHaveAnAccount();

  static final String _dontHaveAnAccount =
      tr(LocaleKeys.auth_signin_dontHaveAnAccount);
  static final String _createOne = tr(LocaleKeys.auth_signin_createOne);
  void onSignUpTapped(BuildContext context) {
    context.goNamed(Routes.signUp.name);
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: _dontHaveAnAccount,
        children: [
          InlineTextButton(
            context,
            text: _createOne,
            onTap: () => onSignUpTapped(context),
          ),
        ],
      ),
    );
  }
}
