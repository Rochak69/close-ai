import 'package:cloud_firestore/cloud_firestore.dart';

class AppFirestore {
  static AppFirestore instance = AppFirestore();
  static late FirebaseFirestore firestore;
  static void init() {
    firestore = FirebaseFirestore.instance;
  }

  static DocumentReference<Map<String, dynamic>> chatDocument(String id) {
    return firestore.collection('chat').doc(id);
  }

  static DocumentReference<Map<String, dynamic>> conversationDocument(
    String id,
  ) {
    return firestore.collection('conversation').doc(id);
  }

  static CollectionReference<Map<String, dynamic>> chatCollection() {
    return firestore.collection('chat');
  }

  static CollectionReference<Map<String, dynamic>> conversationCollection() {
    return firestore.collection('conversation');
  }
}
