import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient:
            LinearGradient(colors: [Colors.green[100], Colors.white])),
      child: GridView.extent(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 300.0,
          children: <Widget>[
            SingleCategory(
              imageLocation: "Images/vegetable.png",
              name: "Vegetable",
            ),
            SingleCategory(
              imageLocation: "Images/fruits1.png",
              name: "Fruits",
            ),
            SingleCategory(
              imageLocation: "Images/dairy.png",
              name: "Dairy",
            ),
            SingleCategory(
              imageLocation: "Images/grains.png",
              name: "Grains",
            ),
            SingleCategory(
              imageLocation: "Images/dryfruits.png",
              name: "Nuts and Dry fruits",
            ),
            SingleCategory(
              imageLocation: "Images/spices.png",
              name: "Spices",
            ),
            SingleCategory(
              imageLocation: "Images/poultry.png",
              name: "Poultry",
            ),
            SingleCategory(
              imageLocation: "Images/seafood.png",
              name: "Seafood",
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
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 4.0)
          ]),
      child: Hero(
        tag: name,
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
              child: Text(name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black54)),
            ),
          ),
        ),
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
            gradient:
                LinearGradient(colors: [Colors.green, Colors.lightBlue])));
  }
}
