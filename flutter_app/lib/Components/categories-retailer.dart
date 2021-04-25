import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/product-sell.dart';
import 'package:flutter_app/Screens/Dashboards/product-buy.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green[100], Colors.white])),
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
            SingleCategoryv(
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
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new DisplayCategory())),
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
class SingleCategoryv extends StatelessWidget {
  final String imageLocation;
  final String name;

  SingleCategoryv({this.imageLocation, this.name});

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
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => new DisplayCategoryv())),
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
class CategoriesSell extends StatefulWidget {
  @override
  _CategoriesSellState createState() => _CategoriesSellState();
}

class _CategoriesSellState extends State<CategoriesSell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green[100], Colors.white])),
      child: GridView.extent(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 300.0,
          children: <Widget>[
            SingleCategorySell(
              imageLocation: "Images/vegetable.png",
              name: "Vegetable",
            ),
            SingleCategorySell(
              imageLocation: "Images/fruits1.png",
              name: "Fruits",
            ),
            SingleCategorySell(
              imageLocation: "Images/dairy.png",
              name: "Dairy",
            ),
            SingleCategorySell(
              imageLocation: "Images/grains.png",
              name: "Grains",
            ),
            SingleCategorySell(
              imageLocation: "Images/dryfruits.png",
              name: "Nuts and Dry fruits",
            ),
            SingleCategorySell(
              imageLocation: "Images/spices.png",
              name: "Spices",
            ),
            SingleCategorySell(
              imageLocation: "Images/poultry.png",
              name: "Poultry",
            ),
            SingleCategorySell(
              imageLocation: "Images/seafood.png",
              name: "Seafood",
            ),
          ]),
    );
  }
}

class SingleCategorySell extends StatelessWidget {
  final String imageLocation;
  final String name;

  const SingleCategorySell({Key key, this.imageLocation, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage(imageLocation),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.4), BlendMode.darken)),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 4.0)
          ]),
      child: Hero(
        tag: name,
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content:
                          Stack(
                              clipBehavior: Clip.none,
                              children: <Widget>[
                                Positioned(
                                  right: -40.0,
                                  top: -40.0,
                                  child: InkResponse(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      },
                                    child: CircleAvatar(
                                      child: Icon(Icons.close),
                                      backgroundColor: Colors.lightGreen,
                                    ),
                                  ),
                                ),
                                Form(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                          controller: TextEditingController(),
                                          decoration:
                                  InputDecoration(hintText: 'Product name'),

                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                          controller: TextEditingController(),
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: 'Price /kg',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: TextFormField(
                                          controller: TextEditingController(),
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: 'Quantity',
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        style: ButtonStyle(
                                          foregroundColor:
                                          MaterialStateProperty.all<Color>(Colors.blue),
                                          overlayColor:
                                          MaterialStateProperty.resolveWith<Color>(
                                                (Set<MaterialState> states) {
                                              if (states.contains(MaterialState.hovered))
                                                return Colors.blue.withOpacity(0.04);
                                              if (states.contains(MaterialState.focused) ||
                                                  states.contains(MaterialState.pressed))
                                                return Colors.blue.withOpacity(0.12);
                                              return null; // Defer to the widget's default.
                                            },
                                          ),
                                        ),
                                        child: Text(
                                          'Add product',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onPressed: () {
                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                            content: Text("Product successfully added"),
                                          ));
                                          Navigator.of(context).pop();
                                        }
                                      )
                                    ]),
                                )
                              ]
                          )
                  );
                });
          },
          child: ListTile(
            title: Center(
                child: Icon(
              Icons.add_outlined,
              color: Colors.white,
              size: 60,
            )),
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
