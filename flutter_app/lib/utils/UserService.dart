import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:jwt_decode/jwt_decode.dart';
import 'package:firebase_core/firebase_core.dart';

class UserService{
  FirebaseAuth _auth;
  FirebaseFirestore _firestore;
  FlutterSecureStorage _storage;

  UserService(){
    initializeFirebaseApp();
  }

  void initializeFirebaseApp() async{
    await Firebase.initializeApp();
      _auth = FirebaseAuth.instance;
      _firestore = FirebaseFirestore.instance;
      _storage = new FlutterSecureStorage();
  }

  int statusCode;
  String msg;

  void storeJWTToken(String idToken, refreshToken) async{
    await _storage.write(key: 'idToken', value: idToken);
    await _storage.write(key: 'refreshToken', value: refreshToken);
  }

  String validateToken(String token){
    bool isExpired = Jwt.isExpired(token);

    if(isExpired){
      return null;
    }
    else{
      Map<String, dynamic> payload = Jwt.parseJwt(token);
      return payload['user_id'];
    }
  }

  void logOut(context) async{
    await _storage.deleteAll();
    Navigator.of(context).pushReplacementNamed('/');
  }

  Future<String> getUserId() async{
    var token = await _storage.read(key: 'idToken');
    var uid = validateToken(token);
    return uid;
  }


  void handleAuthErrors(error){
    String errorCode = error.code;
    switch(errorCode){
      case "ERROR_EMAIL_ALREADY_IN_USE":
        {
          statusCode = 400;
          msg = "Email ID already existed";
        }
        break;
      case "ERROR_WRONG_PASSWORD":
        {
          statusCode = 400;
          msg = "Password is wrong";
        }
    }
  }

  String capitalizeName(String name){
    name = name[0].toUpperCase()+ name.substring(1);
    return name;
  }

  String userEmail(){
    var user = _auth.currentUser;
    return user.email;
  }

  String getPhoneNo() {
    Map Details = new Map();
    String email = userEmail();
    QuerySnapshot profileData = _firestore.collection('users').where('email',isEqualTo: email).get() as QuerySnapshot;
    Details["Phonenumber"] = profileData.docs[0].data()['phone'];
  }


  Future<List> userWishlist() async{
    String uid = await getUserId();
    QuerySnapshot userRef = await _firestore.collection('Users').where('userId',isEqualTo: uid).get();

    Map userData = userRef.docs[0].data();
    List userWishList = new List();

    if(userData.containsKey('wishlist')){
      for(String item in userData['wishlist']){
        Map<String, dynamic> tempWishList = new Map();
        DocumentSnapshot productRef = await _firestore.collection('products').doc(item).get();
        tempWishList['productName'] = productRef.data()['name'];
        tempWishList['price'] = productRef.data()['price'];
        tempWishList['image'] = productRef.data()['image'];
        tempWishList['productId'] = productRef.id;
        userWishList.add(tempWishList);
      }
    }
    return userWishList;
  }

  Future<void> deleteUserWishlistItems(String productId) async{
    String uid = await getUserId();
    QuerySnapshot userRef = await _firestore.collection('users').where('userId',isEqualTo: uid).get();
    String documentId = userRef.docs[0].id;
    Map<String,dynamic> wishlist = userRef.docs[0].data();
    wishlist['wishlist'].remove(productId);

    await _firestore.collection('users').doc(documentId).update({
      'wishlist':wishlist['wishlist']
    });
  }


}

