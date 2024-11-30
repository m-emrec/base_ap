part of '../sign_up.dart';

class _AlreadyHaveAnAccount extends StatelessWidget {
  const _AlreadyHaveAnAccount();

  void onSignUpTapped(BuildContext context) {
    context.goNamed(Routes.signIn.name);
  }

  static final String _alreadyHaveAnAccount =
      tr(LocaleKeys.auth_signup_alreadyHaveAnAccount);
  static final String _signIn = tr(LocaleKeys.auth_signin_signin);
  static final String _here = tr(LocaleKeys.auth_signup_here);
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: _alreadyHaveAnAccount,
        children: [
          InlineTextButton(
            context,
            text: _signIn,
            onTap: () => onSignUpTapped(context),
            children: [
              TextSpan(
                text: " $_here",
                style: context.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
