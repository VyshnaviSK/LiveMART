import 'package:flutter/material.dart';
import 'package:flutter_app/Components/App_Drawer.dart';
import 'package:flutter_app/Screen/customer-buy.dart';

class CustomerHome extends StatefulWidget {
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.lightGreen,
              title: Text('LiveMART'),
              actions: <Widget>[
                new IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ],
            ),
            body: CustomerBody(),
            drawer: CustomerDrawer(),
          ),
        );
  }
}
