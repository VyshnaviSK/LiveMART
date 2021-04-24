import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Models/ItemDetails.dart';
import 'package:flutter_app/Screens/Cart/cart.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';

import 'package:flutter_app/size_config.dart';

class ParticularItem extends StatefulWidget {
  var itemDetails;
  var index;
  final bool editProduct;
  var inStock;

  ParticularItem({var key, this.itemDetails, this.editProduct , this.index , this.inStock}):super(key: key);

  @override
  _ParticularItemState createState() => _ParticularItemState();
}

class _ParticularItemState extends State<ParticularItem> {

  int productQuantity = 1;

  @override
  Widget build(BuildContext buildContext) {
    SizeConfig().init(buildContext);
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(child: Text(widget.itemDetails)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              onPressed: () {

              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 700,
              width: 500,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)
                ),
                color: Colors.white,
                elevation: 10.0,
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                            child: Image.asset("Images/fruits/"+widget.itemDetails+".jpeg",
                              height: 300,
                              width: 300,
                              fit: BoxFit.fill,
                            ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                            width: SizeConfig.screenWidth,
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 10.0
                            ),
                            margin: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent[100],
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 35.0),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Quantity',
                                        style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: (){
                                          setProductQuantity('inc');
                                        },
                                        color: Colors.white,
                                        child: Icon(
                                          Icons.add,
                                        ),
                                        shape: CircleBorder(),
                                        elevation: 18.0,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        child: SizedBox(
                                          height: 70,
                                          width: 70,
                                          child: Center(
                                            child: Text(
                                              '$productQuantity',
                                              style: TextStyle(
                                                fontSize: 40,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: (){
                                          setProductQuantity('dec');
                                        },
                                        textColor: Colors.white,
                                        color: Colors.black,
                                        child: Icon(
                                          Icons.remove,
                                        ),
                                        padding: const EdgeInsets.all(8.0),
                                        shape: CircleBorder(),
                                        elevation: 18.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 40.0),
                                  Center(
                                    child: RoundedButton(
                                      text: "Show Shops",
                                      color: kPrimaryColor,
                                      press: (){

                                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> cart()));

                                      },
                                    ),
                                  )
                                ]
                            )
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  setProductQuantity(String type){
    setState(() {
      if(type == 'inc'){
          productQuantity = productQuantity + 1;
      }
      else{
        if(productQuantity != 1){
          productQuantity = productQuantity - 1;
        }
      }
    });
  }


  checkoutProduct(){

      Map<String,dynamic> args = new Map<String, dynamic>();
      args['price'] = widget.itemDetails['price'];
      args['productId'] = widget.itemDetails['productId'];
      args['quantity'] = productQuantity;
      Navigator.of(context).pushNamed('/checkout/address',arguments: args);

  }



}