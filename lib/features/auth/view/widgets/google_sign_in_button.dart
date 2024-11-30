import 'package:base_ap/core/constants/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/utils/widgets/buttons/buttons_import.dart';
import '../../providers/provider.dart';

///
class GoogleSignInButton extends ConsumerWidget {
  /// GoogleSignInButton is a [ConsumerWidget] that returns a [Row] widget
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        ResponsiveOutlinedButton(
          style: context.theme.outlinedButtonTheme.style?.copyWith(
            padding: const WidgetStatePropertyAll(EdgeInsets.zero),
          ),
          child: Lottie.asset(
            Assets.animations.aniGoogle,
            repeat: false,
          ),
          onPressed: () async => ref
              .read(AuthProvider.authServiceViewModelProvider)
              .googleSignIn(),
        ),
      ],
    );
  }
}
