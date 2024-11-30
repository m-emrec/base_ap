import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../core/constants/app_assets.dart';

///
class SplashScreen extends StatelessWidget {
  /// A stateless widget that represents the splash screen of the application.
  ///
  /// This screen is typically displayed when the app is first launched,
  /// and can be used to show a logo, loading indicator, or other introductory
  /// content.
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    unawaited(
      Future.delayed(
        const Duration(seconds: 3),
        () {
          if (context.mounted) {
            context.go("/");
          }
        },
      ),
    );
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppAssets.splashAni, repeat: false),
      ),
    );
  }
}
