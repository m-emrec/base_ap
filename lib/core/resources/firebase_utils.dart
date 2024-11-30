import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../constants/enums/database keys/collection_keys.dart';

/// A mixin that provides utility methods and properties for interacting with Firebase services.
///
/// This mixin includes instances of Firebase Firestore, Firebase Auth, Firebase Storage,
/// and Firebase Realtime Database, as well as methods for common Firebase operations.

///TODO: mnake this class abstract
///TODO: Make other classes extend this class
/// Like FirestoreUtils extends FirebaseUtils
// /// /// Adds a new document to the specified [collection] with the given [data].
// Future<DocumentReference<Map<String, dynamic>>> addDocument(
//   String collection,
//   Map<String, dynamic> data,
// ) async {
//   return firestore.collection(collection).add(data);
// }

// /// Updates an existing document in the specified [collection] with the given [data].
// Future<void> updateDocument(
//   String collection,
//   String docId,
//   Map<String, dynamic> data,
// ) async {
//   await firestore.collection(collection).doc(docId).update(data);
// }

// /// Deletes a document from the specified [collection].
// Future<void> deleteDocument(String collection, String docId) async {
//   await firestore.collection(collection).doc(docId).delete();
// }

// /// Fetches a document from the specified [collection].
// Future<DocumentSnapshot<Map<String, dynamic>>> getDocument(
//   String collection,
//   String docId,
// ) async {
//   return firestore.collection(collection).doc(docId).get();
// }

mixin FirebaseUtils {
  /// An instance of [FirebaseFirestore] for interacting with Firestore
  ///  database.
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  /// An instance of [FirebaseAuth] for handling authentication.
  final FirebaseAuth auth = FirebaseAuth.instance;

  /// An instance of [FirebaseStorage] for interacting with Firebase Storage.
  final FirebaseStorage storage = FirebaseStorage.instance;

  /// A reference to the root of the Firebase Realtime Database.
  final DatabaseReference rtd = FirebaseDatabase.instance.ref();

  /// The currently authenticated user, or null if no user is signed in.
  User? get currentUser => auth.currentUser;

  /// A stream that emits authentication state changes.
  ///
  /// This stream emits the current user when the authentication state changes.
  Stream<User?> get authStateChanges => auth.authStateChanges();

  /// The UID of the currently authenticated user, or null if no user is
  /// signed in.
  String? get uid => auth.currentUser?.uid;

  /// Returns a [DocumentReference] to the user document in Firestore.
  ///
  /// This method retrieves the document reference for the current user's
  ///  document in the Firestore collection specified by [CollectionKeys.Users].
  Future<DocumentReference<Map<String, dynamic>>> getUserDoc() async {
    return firestore.collection(CollectionKeys.Users.name).doc(uid);
  }

  /// Signs out the currently authenticated user.
  ///
  /// This method signs out the current user from Firebase Auth.
  Future<void> signOut() async => FirebaseAuth.instance.signOut();
}
