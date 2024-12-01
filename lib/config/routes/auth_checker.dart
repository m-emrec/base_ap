// ChangeNotifier to refresh the router
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/config/routes/router.dart';

/// A ChangeNotifier that handles authentication state changes and notifies
///  listeners.
///
/// This class provides a method to check the authentication status of the user
/// and determine the appropriate route based on the user's authentication
/// state.
class AuthChangeNotifier extends ChangeNotifier {
  /// Notifies listeners about changes in the authentication state.
  ///
  /// This method triggers the router to rebuild.
  void notify() {
    notifyListeners(); // This triggers the router to rebuild
  }

  /// Checks if the user is authenticated and determines the appropriate route.
  ///
  /// This function checks if the user is authenticated or not. If the user is
  /// trying to reach the home page but is not authenticated, they will be
  // ignore: comment_references
  /// redirected to the [SignIn] page.
  ///
  /// - Parameters:
  ///   - context: The BuildContext of the widget.
  ///   - state: The current state of the GoRouter.
  ///
  /// - Returns: A FutureOr<String?> that represents the path to redirect to,
  ///  or null if no redirection is needed.
  FutureOr<String?> authChecker(BuildContext context, GoRouterState state) {
    final isLoggedIn = FirebaseAuth.instance.currentUser != null;
    final loggingIn = state.matchedLocation == Routes.signIn.path;
    final signingUp = state.matchedLocation == Routes.signUp.path;
    final currentPath = state.fullPath;
    // If the user is not logged in and current path is not [Routes.signUp]
    //redirect to the login page
    if (!isLoggedIn && currentPath != Routes.signUp.path) {
      return Routes.signIn.path;
    }
    // If the user is logged in and tries to access login, redirect to home
    if (loggingIn || signingUp && isLoggedIn) return '/';
    // No redirection needed
    return null;
  }
}
