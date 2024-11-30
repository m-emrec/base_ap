import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../constants/enums/database keys/collection_keys.dart';

/// An abstract class that provides utility methods and properties for interacting with Firebase services.
///
/// This class includes instances of Firebase Firestore, Firebase Auth, Firebase Storage,
/// and Firebase Realtime Database, as well as methods for common Firebase operations.
abstract class FirebaseUtils {
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

  /// Adds a new document to a Firestore collection.
  ///
  /// This method takes a map of key-value pairs representing the document
  /// fields and their values, and adds it to the specified Firestore collection.
  ///
  /// Returns a [Future] that completes with a [DocumentReference] pointing to
  /// the newly created document.
  ///
  /// Example usage:
  /// ```dart
  /// Map<String, dynamic> data = {
  ///   'name': 'John Doe',
  ///   'age': 30,
  ///   'email': 'johndoe@example.com'
  /// };
  /// DocumentReference<Map<String, dynamic>> docRef = await addDocument(data);
  /// ```
  ///
  /// Throws a [FirebaseException] if the document could not be added.
  Future<DocumentReference<Map<String, dynamic>>> addDocumentToCollection(
    CollectionKeys collection,
    Map<String, dynamic> data,
  ) async =>
      getCollectionRef(collection).add(data);

  /// Adds a document to a specified sub-collection in Firestore.
  ///
  /// This method takes a map of key-value pairs representing the document data
  /// and adds it to the specified sub-collection under a given document.
  ///
  /// Returns a [Future] that completes with a [DocumentReference] pointing to
  /// the newly added document.
  ///
  /// Example usage:
  /// ```dart
  /// final docRef = await addDocumentToSubCollection(
  ///   'users',
  ///   'userId123',
  ///   'orders',
  ///   {'orderId': 'order123', 'amount': 100}
  /// );
  /// ```
  ///
  /// Throws a [FirebaseException] if the operation fails.
  Future<DocumentReference<Map<String, dynamic>>> addDocumentToSubCollection(
    CollectionKeys collection,
    CollectionKeys subCollection,
    Map<String, dynamic> data,
    DocumentReference<Map<String, dynamic>> docRef,
  ) async =>
      getSubCollectionRef(
        collection: collection,
        docId: docRef.id,
        subCollection: subCollection,
      ).add(data);

  /// Updates a document in the Firestore database.
  ///
  /// This method allows you to update a specific document in a Firestore
  /// collection. You need to provide the necessary parameters to identify
  /// the document and the data to be updated.
  ///
  /// Example usage:
  /// ```dart
  /// await updateDocument(
  ///   collectionPath: 'users',
  ///   documentId: 'user123',
  ///   data: {'name': 'John Doe', 'age': 30},
  /// );
  /// ```
  ///
  /// Throws a [FirebaseException] if the update operation fails.
  ///
  /// Parameters:
  /// - `collectionPath`: The path to the Firestore collection containing the document.
  /// - `documentId`: The ID of the document to be updated.
  /// - `data`: A map containing the fields and values to be updated in the document.
  ///
  /// Returns a [Future] that completes when the update operation is finished.
  Future<void> updateDocument({
    required CollectionKeys collection,
    required String docId,
    required Map<String, dynamic> data,
  }) async =>
      getDocumentRef(collection: collection, docId: docId).update(data);

  /// Deletes a document from the Firestore database.
  ///
  /// This method deletes a document from the Firestore database based on the
  /// provided parameters.
  ///
  /// The [collectionPath] parameter specifies the path to the collection
  /// containing the document to be deleted.
  ///
  /// The [documentId] parameter specifies the ID of the document to be deleted.
  ///
  /// Throws a [FirebaseException] if the document could not be deleted.
  ///
  /// Example usage:
  /// ```dart
  /// await deleteDocument(
  ///   collectionPath: 'users',
  ///   documentId: 'user123',
  /// );
  /// ```
  ///
  /// Note: Ensure that the user has the necessary permissions to delete the
  /// document.
  Future<void> deleteDocument({
    required CollectionKeys collection,
    required String docId,
  }) async =>
      getDocumentRef(
        collection: collection,
        docId: docId,
      ).delete();

  /// Returns a [DocumentReference] to the user document in Firestore.
  ///
  /// This method retrieves the document reference for the current user's
  ///  document in the Firestore collection specified by [CollectionKeys.Users].
  Future<DocumentReference<Map<String, dynamic>>> getUserDocRef() async =>
      getCollectionRef(CollectionKeys.Users).doc(uid);

  /// Returns a [CollectionReference] to the specified Firestore collection.
  ///
  /// This method retrieves the collection reference for the given [collection]
  /// in Firestore.
  CollectionReference<Map<String, dynamic>> getCollectionRef(
    CollectionKeys collection,
  ) =>
      firestore.collection(collection.name);

  /// Returns a reference to a document in a Firestore collection.
  ///
  /// This method is used to get a reference to a specific document within a
  /// Firestore collection. The document reference can be used to read, write,
  /// or listen to the document's data.
  ///
  /// Returns:
  ///   A [DocumentReference] object that points to the specified document.
  DocumentReference<Map<String, dynamic>> getDocumentRef({
    required CollectionKeys collection,
    required String docId,
  }) =>
      firestore.collection(collection.name).doc(docId);

  /// Returns a reference to a sub-collection within a Firestore collection.
  ///
  /// This method is used to get a reference to a sub-collection of a specified
  /// Firestore collection. The sub-collection is identified by its name.
  ///
  /// Returns:
  ///   A [CollectionReference] object that points to the specified sub-collection.
  CollectionReference<Map<String, dynamic>> getSubCollectionRef({
    required CollectionKeys collection,
    required String docId,
    required CollectionKeys subCollection,
  }) =>
      firestore
          .collection(collection.name)
          .doc(docId)
          .collection(subCollection.name);

  /// Returns a reference to a sub-document within a Firestore collection.
  ///
  /// This method is used to get a reference to a specific sub-document
  /// within a Firestore collection. The sub-document is identified by
  /// its path within the collection.
  ///
  /// Returns:
  ///   A [DocumentReference] object that points to the specified sub-document.
  DocumentReference<Map<String, dynamic>> getSubDocumentRef({
    required CollectionKeys collection,
    required String docId,
    required CollectionKeys subCollection,
    required String subDocId,
  }) =>
      firestore
          .collection(collection.name)
          .doc(docId)
          .collection(subCollection.name)
          .doc(subDocId);

  /// Signs out the currently authenticated user.
  ///
  /// This method signs out the current user from Firebase Auth.
  Future<void> signOut() async => FirebaseAuth.instance.signOut();
}
