import 'package:flutter/material.dart';
import 'package:flutter_app/Components/App_Drawer.dart';
import 'package:flutter_app/Screens/Cart/cart.dart';
import 'package:flutter_app/Screens/Dashboards/retailer-buy.dart';
import 'package:flutter_app/Screens/Dashboards/retailer-sell.dart';
import 'package:flutter_app/utils/authentication.dart';

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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) {
                        return cart(itemname, qty, price, retailername);
                      }, // Navigated to login for testing, actual navigation to dashboard
                      )
                    }),
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
