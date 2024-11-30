part of '../../app_assets.dart';

/// This enum contains path's of every icons used in this project.
enum _IconPaths {
  emailFieldIcon("${_rootIconPath}ic_email.png"),
  passwordIcon("${_rootIconPath}ic_password.png"),
  ;

  static const String _rootIconPath = "lib/core/assets/icons/";

  final String path;

  const _IconPaths(this.path);
}
