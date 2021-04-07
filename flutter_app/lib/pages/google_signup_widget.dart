import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign-in.dart';
import 'package:provider/provider.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: OutlinedButton.icon(
      label: Text(
        'Sign In With Google',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black54,),
      ),
      style:ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
  RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(40),
  ),),
      ),


    /*child: Padding(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Image(
    image: AssetImage("assets/google_logo.png"),
    height: 35.0,
    ),
    Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text(
    'Sign in with Google',
    style: TextStyle(
    fontSize: 20,
    color: Colors.black,
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
*/


      /*shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      highlightedBorderColor: Colors.black,
      borderSide: BorderSide(color: Colors.black),
      textColor: Colors.black,*/
      icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
      onPressed: () {
        final provider =
        Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.login();
      },
    ),
  );
}
