import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Front Page/front_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_app/Screens/Front Page/user_info_screen.dart';
import 'package:flutter_app/utils/authentication.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
/*Position _currentPosition;
String _currentAddress;

Future<void> _getCurrentPosition() async {
  // verify permissions
  LocationPermission permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    await Geolocator.openAppSettings();
    await Geolocator.openLocationSettings();
  }
  // get current position
  _currentPosition = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  // get address
  String _currentAddress = await _getGeolocationAddress(_currentPosition);
  return _currentAddress;
}

// Method to get Address from position:

Future<String> _getGeolocationAddress(Position position) async {
  // geocoding
  var places = await placemarkFromCoordinates(
    position.latitude,
    position.longitude,
  );
  if (places != null && places.isNotEmpty) {
    final Placemark place = places.first;
    return "${place.thoroughfare}, ${place.locality}";
  }

  return "No address available";
}

Future <String> address = _getCurrentPosition();*/

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
