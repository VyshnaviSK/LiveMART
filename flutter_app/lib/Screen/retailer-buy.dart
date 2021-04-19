import 'package:flutter/material.dart';
import 'package:flutter_app/Components/app-widgets.dart';

class RetailerBuy extends StatefulWidget {
  @override
  _RetailerBuyState createState() => _RetailerBuyState();
}

class _RetailerBuyState extends State<RetailerBuy> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text('Order Status',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 25.0))),
        OrderStatus(),
        new Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.green[100], Colors.white])),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Text('Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 25.0)))),
        Categories()
      ],
    );
  }
}
