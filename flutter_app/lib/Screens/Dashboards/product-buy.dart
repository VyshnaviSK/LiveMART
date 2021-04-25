import 'package:flutter/material.dart';
import 'package:flutter_app/Models/ItemDetails.dart';
import 'package:flutter_app/Screens/Product_details/product_screen.dart';

class DisplayCategory extends StatefulWidget {
  @override
  _DisplayCategoryState createState() => _DisplayCategoryState();
}

class _DisplayCategoryState extends State<DisplayCategory> {
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
      body: ItemList(),
    );
  }
}

class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ItemsPresentv.length,
        itemBuilder: (context, index) {
          return SingleItem(
            itemName: ItemsPresentv[index]["name"],
            itemCost: ItemsPresentv[index]["cost"],
            inStock: ItemsPresentv[index]["stock"],
            availableDate: ItemsPresentv[index]["availableDate"],

          );
        });
  }
}


class SingleItem extends StatelessWidget {
  final String itemName;
  final int itemCost;
  final String inStock;
  final String availableDate;
  final String index;

  const SingleItem({Key key, this.itemName, this.itemCost, this.inStock, this.availableDate , this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ParticularItem(itemDetails: itemName ,editProduct: true,index: index,inStock: inStock,);
                },
              ),
            );
          },
          child: Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.orangeAccent.withOpacity(0.2),
                        offset: Offset(3, 2),
                        blurRadius: 30)
                  ]),
              child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "Images/fruits/"+itemName+".jpeg",
                          height: 120,
                          width: 140,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: itemName +
                                      "\n",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                  "\INR $itemCost /kg\n\n",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                              TextSpan(
                                  text:inStock=="true"?"In stock \n":"Out of stock \n",
                                  style: TextStyle(
                                      color: inStock=="true"?Colors.green:Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:inStock=="false"? "Available On: "+availableDate+"\n":"\n",
                                  style: TextStyle(
                                      color: inStock=="true"?Colors.green:Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ]))
                      ],
                    ))
                  ]
              )
          ),
        )
    );
  }
}

class DisplayCategoryv extends StatefulWidget {
  @override
  _DisplayCategoryvState createState() => _DisplayCategoryvState();
}

class _DisplayCategoryvState extends State<DisplayCategoryv> {
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
      body: ItemListv(),
    );
  }
}

class ItemListv extends StatefulWidget {
  @override
  _ItemListvState createState() => _ItemListvState();
}

class _ItemListvState extends State<ItemListv> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ItemsPresent.length,
        itemBuilder: (context, index) {
          return SingleItem(
            itemName: ItemsPresent[index]["name"],
            itemCost: ItemsPresent[index]["cost"],
            inStock: ItemsPresent[index]["stock"],
            availableDate: ItemsPresent[index]["availableDate"],
          );
        });
  }
}


