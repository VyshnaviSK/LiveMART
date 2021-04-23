import 'package:flutter/material.dart';

//import 'package:app_frontend/services/shoppingBagService.dart';
import 'package:flutter_app/size_config.dart';
import 'package:flutter_app/utils/UserService.dart';

capitalizeHeading(String text){
  if(text == null){
    return text = "";
  }
  else{
    text = "${text[0].toUpperCase()}${text.substring(1)}";
    return text;
  }
}

Widget header(String headerText,GlobalKey<ScaffoldState> scaffoldKey,bool  showIcon, BuildContext context){
  final GlobalKey<State> keyLoader = new GlobalKey<State>();
  SizeConfig().init(context);
  //ShoppingBagService _shoppingBagService = new ShoppingBagService();
  UserService _userService = new UserService();

  return AppBar(
    centerTitle: true,
    title: Text(
      capitalizeHeading(headerText),
    ),
    backgroundColor: Colors.white,
    elevation: 1.0,
    automaticallyImplyLeading: false,
    leading: IconButton(
      icon: Icon(
        Icons.menu
      ),
      onPressed: (){
        if(scaffoldKey.currentState.isDrawerOpen == false){
          scaffoldKey.currentState.openDrawer();
        }
        else{
          scaffoldKey.currentState.openEndDrawer();
        }
      },
    ),
    actions: <Widget>[
      Visibility(
        visible: showIcon,
        child: IconButton(
          icon: Icon(
            Icons.shopping_basket,
          ),
          onPressed: () async{

             /* Map<String,dynamic> args = new Map();

              //List bagItems = await _shoppingBagService.list();
              args['bagItems'] = bagItems;
              Navigator.of(keyLoader.currentContext, rootNavigator: true).pop();
              Navigator.pushNamed(context, '/bag', arguments: args);
              */

          },
        ),
      )
    ],
  );
}