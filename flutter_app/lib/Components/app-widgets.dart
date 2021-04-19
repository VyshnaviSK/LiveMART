import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/product.dart';
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
          onTap:  ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new DisplayCategory())),
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
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: <Widget>[
          timelineRow("Order Placed", "Wed, 9 Aug"),
          timelineRow("Order Dispatched", "Wed, 9 Aug"),
          timelineRow("Order In Transit", ""),
          timelineLastRow("Order Delivered", ""),
        ],
      )
    );
  }
}
Widget timelineRow(String title, String subTile) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 18,
              height: 18,
              decoration: new BoxDecoration(
                color: subTile!=""?Colors.green:Colors.grey,
                shape: BoxShape.circle,
              ),
              child: Text(""),
            ),
            Container(
              width: 3,
              height: 50,
              decoration: new BoxDecoration(
                color: subTile!=""?Colors.green:Colors.grey,
                shape: BoxShape.rectangle,
              ),
              child: Text(""),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 9,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$title\n $subTile',
                style: TextStyle(
                    fontFamily: "regular",
                    fontSize: 14,
                    color: Colors.black54)),
          ],
        ),
      ),
    ],
  );
}
Widget timelineLastRow(String title, String subTile) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 18,
              height: 18,
              decoration: new BoxDecoration(
                color: subTile!=""?Colors.green:Colors.grey,
                shape: BoxShape.circle,
              ),
              child: Text(""),
            ),
            Container(
              width: 3,
              height: 20,
              decoration: new BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
              ),
              child: Text(""),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${title}\n ${subTile}',
                style: TextStyle(
                    fontFamily: "regular",
                    fontSize: 14,
                    color: Colors.black54)),
          ],
        ),
      ),
    ],
  );
}
