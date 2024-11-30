// ignore_for_file: public_member_api_docs

class Credentials {
  /// A class representing user credentials.
  ///
  /// This class is used to store and manage user authentication credentials
  /// such as username and password.
  ///
  /// Example usage:
  /// ```dart
  /// final credentials = Credentials(username: 'user', password: 'pass');
  /// ```
  ///
  /// Properties:
  /// - `username`: The username of the user.
  /// - `password`: The password of the user.
  const Credentials({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;
}
