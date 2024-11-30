import 'package:base_ap/core/constants/generated/assets.gen.dart';
import 'package:flutter/material.dart';

import 'auth_barrel.dart';
part 'widgets/terms_and_conditions.dart';
part 'widgets/already_have_an_account.dart';

///
class SignUp extends ConsumerStatefulWidget {
  /// Sign Up Page
  const SignUp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> with SignUpMixin {
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
            ),
            const MaxGap(AppPadding.mPadding),
            _TermsAndConditions(
              isAccepted: isAccepted,
              onAcceptedChanged: (value) {
                setState(() {
                  isAccepted = value;
                });
              },
            ),
            const MaxGap(AppPadding.lPadding),

            /// Sign In Button
            ResponsiveElevatedButton(
              onPressed: onTapSignUp,
              child: Text(createYourAccount),
            ),
            const MaxGap(AppPadding.sPadding),

            /// Already have an account
            const _AlreadyHaveAnAccount(),
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
