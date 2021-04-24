import 'package:flutter/material.dart';


class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('LiveMART'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
    );
  }
}

