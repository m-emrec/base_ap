part of '../sign_in.dart';

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
