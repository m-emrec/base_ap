part of '../../app_assets.dart';

/// This enum contains path's of every image used in this project.
enum _ImagePaths {
  logo("${_rootImagePath}logo.png"),
  ;

  const _ImagePaths(this.path);

  static const String _rootImagePath = "lib/core/assets/images/";

  final String path;
}
