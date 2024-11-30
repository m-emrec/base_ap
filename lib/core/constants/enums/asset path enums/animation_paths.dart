part of '../../app_assets.dart';

/// This enum contains path's of every animation used in this project.
enum _AnimationPaths {
  facebook("${_rootAniPath}ani_facebook.json"),
  google("${_rootAniPath}ani_google.json"),
  splash("${_rootAniPath}ani_splash.json"),
  ;

  const _AnimationPaths(this.path);
  static const String _rootAniPath = "lib/core/assets/animations/";

  final String path;
}
