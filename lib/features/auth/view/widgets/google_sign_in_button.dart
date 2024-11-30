import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/utils/widgets/buttons/buttons_import.dart';
import '../../providers/provider.dart';

class GoogleSignInButton extends ConsumerWidget {
  GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      children: [
        ResponsiveOutlinedButton(
          style: context.theme.outlinedButtonTheme.style?.copyWith(
            padding: const WidgetStatePropertyAll(EdgeInsets.zero),
          ),
          child: Lottie.asset(
            AppAssets.googleAni,
            repeat: false,
          ),
          onPressed: () async => await ref
              .read(AuthProvider.authServiceViewModelProvider)
              .googleSignIn(),
        ),
      ],
    );
  }
}
