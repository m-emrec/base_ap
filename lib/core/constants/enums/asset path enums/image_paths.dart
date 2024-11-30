part of '../../app_assets.dart';

/// This enum contains path's of every image used in this project.
enum _ImagePaths {
  logo("${_rootImagePath}logo.png"),
  ;

  static const String _rootImagePath = "lib/core/assets/images/";

  final String path;

  const _ImagePaths(this.path);
}
