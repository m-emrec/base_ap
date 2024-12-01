import '../../../core/resources/data_state.dart';
import '../../../core/resources/firebase_utils.dart';
import '../model/credentials.dart';

import 'google_sign_in_service.dart';

/// A service class that handles authentication operations using Firebase.
class AuthService extends FirebaseUtils {
  /// Signs up a user with email and password.
  ///
  /// Takes [credentials] which includes the user's email and password.
  /// Returns a [DataState] indicating the success or failure of the operation.
  Future<DataState<void>> signUpWithEmail({
    required Credentials credentials,
  }) async {
    return DataState.handleDataState<void>(
      () => auth.createUserWithEmailAndPassword(
        email: credentials.email,
        password: credentials.password,
      ),
    );
  }

  /// Signs in a user with email and password.
  ///
  /// Takes [credentials] which includes the user's email and password.
  /// Returns a [DataState] indicating the success or failure of the operation.
  Future<DataState<void>> signInWithEmail({
    required Credentials credentials,
  }) async {
    final result = DataState.handleDataState<void>(
      () => auth.signInWithEmailAndPassword(
        email: credentials.email,
        password: credentials.password,
      ),
    );
    return result;
  }

  /// Sends a password reset email to the user.
  ///
  /// Takes [credentials] which includes the user's email.
  /// Returns a [DataState] indicating the success or failure of the operation.
  Future<DataState<void>> forgotPassword({
    required Credentials credentials,
  }) async {
    return DataState.handleDataState<void>(
      () => auth.sendPasswordResetEmail(
        email: credentials.email,
      ),
    );
  }

  /// Signs in a user using Google authentication.
  ///
  /// Returns a [DataState] indicating the success or failure of the operation.
  Future<DataState<void>> signInWithGoogle() async {
    return DataState.handleDataState<void>(
      () async {
        final credential = await GoogleSignInService().signIn();
        if (credential == null) {
          throw Exception('Google sign-in failed');
        }
        await auth.signInWithCredential(credential);
      },
    );
  }
}
