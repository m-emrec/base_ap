// ignore_for_file: public_member_api_docs

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../service/auth_service.dart';
import '../view%20model/auth_view_model.dart';

/// A provider class for handling authentication-related operations.
///
/// This class is responsible for managing user authentication state,
/// performing login and logout operations, and providing authentication
/// status to other parts of the application.
class AuthProvider {
  static final Provider<AuthService> _authServiceProvider =
      Provider<AuthService>((ref) {
    return AuthService();
  });

  static final ChangeNotifierProvider<AuthViewModel>
      authServiceViewModelProvider =
      ChangeNotifierProvider<AuthViewModel>((ref) {
    return AuthViewModel(authService: ref.read(_authServiceProvider));
  });
}
