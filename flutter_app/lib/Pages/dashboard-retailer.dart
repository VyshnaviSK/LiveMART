import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/Components/app-widgets.dart';
class RetailerHome extends StatefulWidget {
  @override
  _RetailerHomeState createState() => _RetailerHomeState();
}

class _RetailerHomeState extends State<RetailerHome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('LiveMART'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          //header
          new UserAccountsDrawerHeader(
            accountName: Text('Kashish'),
            accountEmail: Text('kashish@mail.comm'),
            currentAccountPicture: new GestureDetector(
              child: new CircleAvatar(
                child: Icon(Icons.person, color: Colors.white),
                backgroundColor: Colors.blueAccent,
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.green,
            ),
          ),
          //body
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Catalogue'),
              leading: Icon(Icons.menu_book,color: Colors.green,size: 25),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite
                  ,color: Colors.green,size: 25),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Order history'),
              leading: Icon(Icons.auto_stories,color: Colors.green,size: 25),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Wholesalers around me'),
              leading: Icon(Icons.emoji_people_outlined,color: Colors.green,size: 25),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Customer Statistics'),
              leading: Icon(Icons.analytics_outlined,color: Colors.green,size: 25),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Profiles'),
              leading: Icon(Icons.group,color: Colors.blueAccent,size: 25),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Feedback & Queries'),
              leading: Icon(Icons.help,color: Colors.blueAccent,size: 25),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.login_outlined,color: Colors.blueAccent,size: 25),
            ),
          ),
        ],
      ),
      ),
      body: new ListView(
        children: <Widget>[
          OrderStatus(),
          new Padding(padding: const EdgeInsets.all(10.0),
          child: new Text('Categories', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20.0),)),
          Categories()
        ],
      )
    );
  }
}
