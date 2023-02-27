import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


Future<void>addUser(String name)async {
  FirebaseAuth auth=FirebaseAuth.instance;
  String uid=auth.currentUser!.uid.toString();
  CollectionReference users=FirebaseFirestore.instance.collection("users");
  users.add(
      {uid:name});


}