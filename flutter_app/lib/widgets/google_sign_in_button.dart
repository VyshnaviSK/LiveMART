import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Login/login_screen.dart';
import 'package:flutter_app/Screens/Signup/signup_screen.dart';
import 'package:flutter_app/Screens/Welcome/components/background.dart';
import 'package:flutter_app/Screens/Welcome/components/divider_or.dart';
import 'package:flutter_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_app/Screens/Welcome_Retailer/welcomeretailer_screen.dart';
import 'package:flutter_app/Screens/Welcome_Wholesaler/welcomewholesaler_screen.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app/Screens/Welcome/components/social_icon.dart';
import 'package:flutter_app/utils/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/Screens/Front Page/user_info_screen.dart';


class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: _isSigningIn
          ? CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrange),
      )
          : OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        onPressed: () async {
          setState(() {
            _isSigningIn = true;
          });

          User user = await Authentication.signInWithGoogle(context: context);



          setState(() {
            _isSigningIn = false;
          });

          if (user != null) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => UserInfoScreen(
                  user: user,
                ),
              ),
            );
          }
          if (user == null) {
            return WelcomeScreen();
          }
        },


        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Image.asset("assets/images/google_logo.png", height: 20.0,
                ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}