import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





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
