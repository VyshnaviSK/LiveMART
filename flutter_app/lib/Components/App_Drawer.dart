import 'package:flutter/material.dart';

class DrawerRetailer extends StatefulWidget {
  @override
  _DrawerRetailerState createState() => _DrawerRetailerState();
}

class _DrawerRetailerState extends State<DrawerRetailer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () {},
            child: ListTile(
              title: Text('My Catalogue'),
              leading: Icon(Icons.menu_book, color: Colors.green, size: 25),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.green, size: 25),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Order history'),
              leading:
              Icon(Icons.auto_stories, color: Colors.green, size: 25),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Wholesalers around me'),
              leading: Icon(Icons.emoji_people_outlined,
                  color: Colors.green, size: 25),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Customer Statistics'),
              leading: Icon(Icons.analytics_outlined,
                  color: Colors.green, size: 25),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Profiles'),
              leading:
              Icon(Icons.group, color: Colors.blueAccent, size: 25),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Feedback & Queries'),
              leading: Icon(Icons.help, color: Colors.blueAccent, size: 25),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.login_outlined,
                  color: Colors.blueAccent, size: 25),
            ),
          ),
        ],
      ),
    );
  }
}
