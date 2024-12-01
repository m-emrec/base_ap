import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

/// An abstract class representing the state of data, which can either be a
/// success or a failure.
///
/// [T] is the type of data being handled.
abstract class DataState<T> {
  /// Constructs a [DataState] with an optional [errorMessage] and [resultData].
  DataState({
    this.errorMessage,
    this.resultData,
  });

  /// An optional exception message if the data state represents a failure.
  final String? errorMessage;

  /// The data being handled, if the data state represents a success.
  final T? resultData;

  /// A static method to handle the state of data asynchronously.
  ///
  /// Takes a function [func] that returns a [FutureOr] of type [T].
  ///
  /// Returns a [DataSuccess] if the function completes successfully with data,
  /// or a [DataFailed] if an exception is thrown.
  static Future<DataState<T>> handleDataState<T>(
    FutureOr<T> Function() func,
  ) async {
    try {
      final data = await func();

      return DataSuccess(data);
    } on FirebaseAuthException catch (e) {
      return DataFailed(e.code);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }
}

/// A class representing a successful data state.
///
/// [T] is the type of data being handled.
final class DataSuccess<T> extends DataState<T> {
  /// Constructs a [DataSuccess] with the given [resultData].
  DataSuccess([T? resultData]) : super(resultData: resultData);
}

/// A class representing a failed data state.
///
/// [T] is the type of data being handled.
final class DataFailed<T> extends DataState<T> {
  /// Constructs a [DataFailed] with the given [errorMessage] message.
  DataFailed(String errorMessage) : super(errorMessage: errorMessage);
}
