import 'package:go_router/go_router.dart';

import '../../features/auth/service/auth_service.dart';
import '../../features/auth/view/sign_in.dart';
import '../../features/auth/view/sign_up.dart';

import '../../features/home/view/home.dart';
import '../../features/splash/splash_screen.dart';
import 'auth_checker.dart';

/// This enum contains the name of the routes in the app
enum Routes {
  // ignore: public_member_api_docs
  signIn,
  // ignore: public_member_api_docs
  signUp,
  // ignore: public_member_api_docs
  splash,
  ;

  /// Returns the path of the route
  String get path => "/$name";
}

/// The AppRouter class is responsible for managing the application's routing.
/// It listens to authentication state changes and updates the
/// routes accordingly.
final class AppRouter {
  /// When the AppRouter is instantiated, it starts listening to authentication
  ///  state changes.
  AppRouter() {
    AuthService().authStateChanges.listen((user) {
      _authChangeNotifier.notify();
    });
  }

  /// Getter for the GoRouter instance.
  GoRouter get router => _router;

  /// An instance of AuthChangeNotifier to listen for authentication changes.
  static final AuthChangeNotifier _authChangeNotifier = AuthChangeNotifier();

  /// The GoRouter instance that defines the application's routes and their
  /// configurations.
  static final GoRouter _router = GoRouter(
    refreshListenable: _authChangeNotifier,
    initialLocation: Routes.splash.path,
    routes: [
      //* Splash Page
      GoRoute(
        path: Routes.splash.path,
        name: Routes.splash.name,
        builder: (context, state) => const SplashScreen(),
      ),

      //* Home Page
      GoRoute(
        redirect: _authChangeNotifier.authChecker,
        path: '/',
        builder: (context, state) => const Home(),
      ),

      //* [SignUp] page
      GoRoute(
        redirect: _authChangeNotifier.authChecker,
        name: Routes.signUp.name,
        path: Routes.signUp.path,
        builder: (context, state) => const SignUp(),
      ),

      //* [SignIn] page
      GoRoute(
        redirect: _authChangeNotifier.authChecker,
        name: Routes.signIn.name,
        path: Routes.signIn.path,
        builder: (context, state) => const SignIn(),
      ),
    ],
  );
}
