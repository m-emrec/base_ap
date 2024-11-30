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
            ),

            MaxGap(AppPaddings.mPadding),
            _TermsAndConditions(
              isAccepted: isAccepted,
              onAcceptedChanged: (value) {
                setState(() {
                  isAccepted = value;
                });
              },
            ),
            MaxGap(AppPaddings.lPadding),

            /// Sign In Button
            ResponsiveElevatedButton(
              onPressed: onTapSignUp,
              child: Text(createYourAccount),
            ),
            MaxGap(AppPaddings.sPadding),

            /// Already have an account
            const _AlreadyHaveAnAccount(),
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
