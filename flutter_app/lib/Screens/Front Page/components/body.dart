import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/Screens/Welcome/components/divider_or.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/Welcome_Retailer/welcomeretailer_screen.dart';
import 'package:flutter_auth/Screens/Welcome_Wholesaler/welcomewholesaler_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth/Screens/Welcome/components/social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hello User!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
                  "Welcome to LIVEMART",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "You are a....",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "CUSTOMER",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "RETAILER",
              //color: kPrimaryLightColor,
              //textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeRetailerScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "WHOLESALER",
              //color: kPrimaryLightColor,
              //textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeWholesalerScreen();
                    },
                  ),
                );
              },
            ),
            /*divider_or(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                social_icon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                social_icon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                social_icon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
