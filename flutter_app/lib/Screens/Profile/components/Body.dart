import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:app_frontend/services/checkoutService.dart';
import 'package:flutter_app/Screens/Profile/components/header.dart';
import 'package:flutter_app/utils/ProfileService.dart';
import 'package:flutter_app/utils/UserService.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ProfileService _profileService = new ProfileService();
  /*CheckoutService _checkoutService = new CheckoutService();*/
  UserService _userService = new UserService();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  bool showCartIcon = true;
  String name;
  String mobileNumber;
  String email;

  void setProfileDetails(context) async {
    dynamic args = ModalRoute.of(context).settings.arguments;
    this.setState(() {
      name = args['fullName'];
      mobileNumber = args['mobileNumber'];
    });
  }

  void initState(){
    super.initState();
    name ='';
    mobileNumber ='';
    email ='';
  }

  @override
  Widget build(BuildContext context) {
    setProfileDetails(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: header('Profile', _scaffoldKey,showCartIcon,context),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/userProfile.jpg')
                    )
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                name,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0
                ),
              ),
              SizedBox(height: 60.0),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 40.0,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Account Details',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 35.0,
                ),
                onTap: () async{
                    dynamic args = ModalRoute.of(context).settings.arguments;
                    String email = _userService.userEmail();
                    args['email'] = email;
                    Navigator.pushNamed(context, '/profile/edit',arguments: args);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  size: 40.0,
                  color: Colors.red,
                ),
                title: Text(
                  'WishList',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 35.0,
                ),
                onTap: () async{
                    /*
                    List userList = await _userService.userWishlist();
                    Navigator.of(_keyLoader.currentContext, rootNavigator: true).pop();
                    Navigator.pushNamed(context, '/wishlist',arguments: {'userList':userList});

                     */
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.local_shipping,
                  size: 40.0,
                ),
                title: Text(
                  'Order History',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 35.0,
                ),
                onTap: () async{
                  /*
                    Loader.showLoadingScreen(context, _keyLoader);
                    List orderData = await _checkoutService.listPlacedOrder();
                    Navigator.of(_keyLoader.currentContext, rootNavigator: true).pop();
                    Navigator.popAndPushNamed(context, '/placedOrder',arguments: {'data': orderData});


                   */

                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 40.0,
                  color: Colors.grey,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 35.0,
                ),
                onTap: () async{
                  /*
                    Loader.showLoadingScreen(context, _keyLoader);
                    QuerySnapshot userSettings = await _profileService.getUserSettings();
                    Navigator.of(_keyLoader.currentContext, rootNavigator: true).pop();
                    Navigator.of(context).pushNamed('/profile/settings', arguments: userSettings.docs[0].data);
                  */

                },
              ),

              SizedBox(height: 60.0),
              ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width - 50.0,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: (){
                      _userService.logOut(context);
                    },
                    color: Colors.white,
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black26,
                          width: 2.0
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}