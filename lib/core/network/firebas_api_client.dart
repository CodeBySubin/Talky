
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreApiClient {
  final FirebaseFirestore _firestore;

  FirestoreApiClient(this._firestore);

  /// GET: Fetch a single document
  Future<Map<String, dynamic>?> getDocument({
    required String collectionPath,
    required String docId,
  }) async {
    final doc = await _firestore.collection(collectionPath).doc(docId).get();
    return doc.exists ? doc.data() : null;
  }

  /// GET: Fetch all documents in a collection
  Future<List<Map<String, dynamic>>> getCollection({
    required String collectionPath,
  }) async {
    final snapshot = await _firestore.collection(collectionPath).get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  /// POST: Add a new document with auto ID
  Future<void> addDocument({
    required String collectionPath,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collectionPath).add(data);
  }

  /// PUT: Set or overwrite a document with custom ID
  Future<void> setDocument({
    required String collectionPath,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collectionPath).doc(docId).set(data);
  }

  /// PATCH: Update an existing document
  Future<void> updateDocument({
    required String collectionPath,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collectionPath).doc(docId).update(data);
  }

  /// DELETE: Remove a document
  Future<void> deleteDocument({
    required String collectionPath,
    required String docId,
  }) async {
    await _firestore.collection(collectionPath).doc(docId).delete();
  }
}
