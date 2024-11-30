// ignore_for_file: omit_local_variable_types

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../config/localization/lang/locale_keys.g.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_paddings.dart';

/// This divider used on SignIn and SignUp pages
class OrDivider extends StatelessWidget {
  /// This divider used on SignIn and SignUp pages
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String or = tr(LocaleKeys.auth_or);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _divider(
          Alignment.centerRight,
          Alignment.centerLeft,
        ),
        const Gap(AppPadding.xxsPadding),
        Text(or),
        const Gap(AppPadding.xxsPadding),
        _divider(Alignment.centerLeft, Alignment.centerRight),
      ],
    );
  }

  Flexible _divider(
    AlignmentGeometry begin,
    AlignmentGeometry end,
  ) {
    return Flexible(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [
                AppColors.accentOrange[60]!,
                AppColors.accentOrange[0]!,
              ],
              begin: begin,
              end: end,
            ).createShader(bounds);
          },
          child: Container(
            height: 2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
            ),
          ),
        ),
      ),
    );
  }
}
