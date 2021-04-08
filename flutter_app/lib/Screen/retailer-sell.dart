import 'package:flutter/material.dart';
import 'package:flutter_app/Components/app-widgets.dart';

class RetailerSell extends StatefulWidget {
  @override
  _RetailerSellState createState() => _RetailerSellState();
}

class _RetailerSellState extends State<RetailerSell> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        OrderStatus(),
        new Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.green[100], Colors.white])),
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
