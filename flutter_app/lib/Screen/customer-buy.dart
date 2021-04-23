import 'package:flutter/material.dart';
import 'package:flutter_app/Components/app-widgets.dart';
import 'package:flutter_app/Components/categories-customer.dart';
class CustomerBody extends StatefulWidget {
  @override
  _CustomerBodyState createState() => _CustomerBodyState();
}

class _CustomerBodyState extends State<CustomerBody> {
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
                LinearGradient(colors: [Colors.orangeAccent[100], Colors.white])),
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
