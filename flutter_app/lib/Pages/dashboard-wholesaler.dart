import 'package:flutter/material.dart';
import 'package:flutter_app/Components/App_Drawer.dart';
import 'package:flutter_app/Screens/Dashboards/retailer-sell.dart';

class WholesalerHome extends StatefulWidget {
  @override
  _WholesalerHomeState createState() => _WholesalerHomeState();
}

class _WholesalerHomeState extends State<WholesalerHome> {
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
        body: RetailerSell(),
        drawer: WholesalerDrawer(),
      ),
    );
  }
}
