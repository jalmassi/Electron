import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:electron_ecom/components/horizontal_listview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('images/laptop/laptop1.jpg'),
          AssetImage('images/tv/tv1.jpg'),
          AssetImage('images/tv/tv2.jpg'),
          AssetImage('images/tv/tv3.jpg'),
          AssetImage('images/tv/tv4.jpg'),
          AssetImage('images/laptop/laptop2.jpg'),
        ],
        autoplay: true, //images not rolling
        animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 1000),
        autoplayDuration: Duration(milliseconds: 5000),
        dotColor: Colors.white,
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
          title: Text('Ganjee'),
          elevation: 0.9,
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {}),
          ]),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
        //  header
        new UserAccountsDrawerHeader(
        accountName: Text('Justin Almassi'),
        accountEmail: Text('justin.almassi@gmail.com'),
        currentAccountPicture: GestureDetector(
          child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white)
          ),
        ),
        decoration: new BoxDecoration(
            color: Colors.blueGrey
        ),
      ),
      //  body
      InkWell(
        onTap: () {},
        child: ListTile(
            title: Text('Home Page'),
            leading: Icon(Icons.home, color: Colors.black,)
        ),
      ),
      InkWell(
        onTap: () {},
        child: ListTile(
            title: Text('Account Info'),
            leading: Icon(Icons.person, color: Colors.black,)
        ),
      ),
      InkWell(
        onTap: () {},
        child: ListTile(
            title: Text('Orders'),
            leading: Icon(Icons.shopping_basket, color: Colors.black)
        ),
      ),
      InkWell(
        onTap: () {},
        child: ListTile(
            title: Text('Categories'),
            leading: Icon(Icons.dashboard, color: Colors.yellow,)
        ),
      ),
      InkWell(
        onTap: () {},
        child: ListTile(
            title: Text('Favourites'),
            leading: Icon(Icons.favorite, color: Colors.red)
        ),
      ),

      Divider(),

      InkWell(
        onTap: () {},
        child: ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings, color: Colors.blue,)
        ),
      ),
      InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.blue,)
          ),
        )
      ]),
    ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          // padding categories text widget
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text('Categories',),
          ),
          // Horizontal list view
          HorizontalList(),

        ],
      ),
    );
  }
}
