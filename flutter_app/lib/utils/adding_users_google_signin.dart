import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Front Page/front_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_app/Screens/Front Page/user_info_screen.dart';
import 'package:flutter_app/utils/authentication.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  /// The main Firestore user collection
  //final firestoreInstance = FirebaseFirestore.instance;
  final CollectionReference userCollection = FirebaseFirestore.instance
      .collection('Users');

  static void infoset() {
    var firebaseUser = FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection("users").doc(firebaseUser.uid).set(
        {
          "address": {
            "street": "street 24",
            "city": "new york"
          },
          "name": firebaseUser.displayName,
          "email": firebaseUser.email,
          "phone": firebaseUser.phoneNumber,

        }).then((_) {
      print("success!");
    });
  }
}
