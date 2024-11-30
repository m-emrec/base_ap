part "enums/asset path enums/image_paths.dart";
part "enums/asset path enums/icon_paths.dart";
part "enums/asset path enums/animation_paths.dart";

/// This class provides static paths to various assets used in the application.
///
/// It includes paths for images, icons, and animations, which are organized
/// into separate private classes for better structure and maintainability.
class AppAssets {
  /// Path to the logo image.
  static String logoPath = _ImagePaths.logo.path;

  /// Path to the email field icon.
  static String emailFieldIconPath = _IconPaths.emailFieldIcon.path;

  /// Path to the password icon.
  static String passwordIconPath = _IconPaths.passwordIcon.path;

  /// Path to the Google animation.
  static String googleAni = _AnimationPaths.google.path;

  /// Path to the Facebook animation.
  static String facebookAni = _AnimationPaths.facebook.path;

  /// Path to the splash screen animation.
  static String splashAni = _AnimationPaths.splash.path;
}
