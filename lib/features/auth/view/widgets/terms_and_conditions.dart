part of '../sign_up.dart';

class _TermsAndConditions extends StatefulWidget {
  const _TermsAndConditions({
    required this.isAccepted,
    required this.onAcceptedChanged,
  });
  final bool isAccepted;
  final ValueChanged<bool> onAcceptedChanged;

  @override
  State<_TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<_TermsAndConditions> {
  static final String _iAcceptThe = tr(LocaleKeys.auth_signup_iAcceptThe);
  static final String _termsConditions =
      tr(LocaleKeys.auth_signup_termsAndConditions);

  void showTermsAndConditions(BuildContext context) {
    CustomBottomSheet.show(
      context,
      widget: _bottomSheet(context),
    );
  }

  Widget _bottomSheet(BuildContext context) {
    return CustomBottomSheet(
      content: SizedBox(
        height: context.screenSize.height * 0.7,
        child: Markdown(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          selectable: true,
          data: tr(LocaleKeys.auth_signup_termAndConditionsText),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text.rich(
            softWrap: true,
            TextSpan(
              text: "$_iAcceptThe ",
              children: [
                InlineTextButton(
                  context,
                  text: _termsConditions,
                  onTap: () => showTermsAndConditions(context),
                ),
              ],
            ),
          ),
        ),
        Checkbox(
          value: widget.isAccepted,
          onChanged: (val) => widget.onAcceptedChanged(val ?? false),
        ),
      ],
    );
  }
}
