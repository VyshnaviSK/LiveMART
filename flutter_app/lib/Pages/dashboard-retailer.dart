import 'package:flutter/material.dart';
import 'package:flutter_app/Components/App_Drawer.dart';
import 'package:flutter_app/Screen/retailer-buy.dart';
import 'package:flutter_app/Screen/retailer-sell.dart';

class RetailerHome extends StatefulWidget {
  @override
  _RetailerHomeState createState() => _RetailerHomeState();
}
class _RetailerHomeState extends State<RetailerHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
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
              bottom: TabBar(
                tabs: [
                  Tab(text: 'BUY'),
                  Tab(text: 'SELL'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                RetailerBuy(),
                RetailerSell()
              ],
            ),
            drawer: DrawerRetailer(),
          ),
        )
    );
  }
}
