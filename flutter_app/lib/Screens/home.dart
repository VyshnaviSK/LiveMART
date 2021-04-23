import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Login/login_screen.dart';
import 'package:flutter_app/Screens/Product_details/product_screen.dart';
import 'package:flutter_app/Screens/Profile/ProfileScreen.dart';
import 'package:flutter_app/components/rounded_button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("title"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () {
                FirebaseAuth auth = FirebaseAuth.instance;
                auth.signOut().then((res) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                          (Route<dynamic> route) => false);
                });
              },
            )
          ],
        ),
        body: Center(
            child:
            Container(
              child: Column(
                children: [
                  RoundedButton(
                    text: "Profile",
                    press: ()  {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfileScreen();
                          }, // Navigated to login for testing, actual navigation to dashboard
                        ),
                      );
                    }
                  ),
                  SizedBox(height: 0.5,),
                  RoundedButton(
                      text: "Item",
                      press: ()  {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProductScreen();
                            }, // Navigated to login for testing, actual navigation to dashboard
                          ),
                        );
                      }
                  ),
                ]
             ),
            )
        )
    );
  }
}

