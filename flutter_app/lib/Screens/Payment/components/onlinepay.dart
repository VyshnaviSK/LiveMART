import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/dashboard-retailer.dart';
import 'package:flutter_app/Screens/Feedback/feedback.dart';
import 'package:flutter_app/Screens/Feedback/splash_page.dart';
import 'package:flutter_app/Screens/Login/login_screen.dart';
import 'package:flutter_app/Screens/Product_details/product_screen.dart';
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
import 'package:flutter_app/widgets/google_sign_in_button.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    // This size provide us total height and width of our screen
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*Text(
              "Hello User!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),*/
              Text(
                "***************************************",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "****************************************",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "LiveMART Invoice Details",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "*******************************************",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "****************************************",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              Text(
                "Your order No: ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "M246",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "has been",
                style: TextStyle( fontSize: 20),
              ),
              Text(
                "Successfully Placed!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              SizedBox(height: size.height * 0.02),
              Image.asset(
              "assets/images/payment.jpg",
              height: size.height * 0.25,
            ),
              Text(
                "*************************************************************************",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
              Text(
                "Here are the delivery order details:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "Order No: M246",
                style: TextStyle( fontSize: 15),
              ),
              Text(
                "Tentative Delivery Date: 26/04/2021",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "NOTE: Due to lockdown in nearby areas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "Delivery Slots may be fewer than before",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "Delivery Agent: Mr.PCT",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Phone number of agent: 9876543210:",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: size.height * 0.035),
              RoundedButton(
                text: "CLICK HERE TO RETURN TO DASHBOARD",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RetailerHome();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                text: "CLICK HERE TO GIVE FEEDBACK!",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Splash();
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
            FutureBuilder(
              future: Authentication.initializeFirebase(context: context),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error initializing Firebase');
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return GoogleSignInButton();
                }
                return CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.orange,
                  ),
                );
              },
            ),*/
            ],
          ),
        )
    );
  }
}
