import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(30),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 300.0,
          children: <Widget>[
            SingleCategory(
              imageLocation: "Images/tomato.png",
              name: "tomato",
            ),
            SingleCategory(
              imageLocation: "Images/tomato.png",
              name: "tomatoaa",
            ),
            SingleCategory(
              imageLocation: "Images/tomato.png",
              name: "tomatooooo",
            ),

            SingleCategory(
              imageLocation: "Images/tomato.png",
              name: "tomatooooo",
            ),

            SingleCategory(
              imageLocation: "Images/tomato.png",
              name: "tomatooooo",
            ),
            SingleCategory(
              imageLocation: "Images/tomato.png",
              name: "tomatooooo",
            ),
            SingleCategory(
              imageLocation: "Images/tomato.png",
              name: "tomatooooo",
            ),
          ]),

    );
  }
}

class SingleCategory extends StatelessWidget {
  final String imageLocation;
  final String name;

  SingleCategory({this.imageLocation, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {},
        child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100,
              height: 200,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(name, textAlign: TextAlign.center),
            )),
      ),
    );
  }
}

class OrderStatus extends StatefulWidget {
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.blue])));
  }
}
