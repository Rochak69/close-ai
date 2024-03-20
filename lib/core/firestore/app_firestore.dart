import 'package:cloud_firestore/cloud_firestore.dart';

class AppFirestore {
  static AppFirestore instance = AppFirestore();
  static late FirebaseFirestore firestore;
  static void init() {
    firestore = FirebaseFirestore.instance;
  }
}
