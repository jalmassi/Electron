import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false, //images not rolling
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
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
          image_carousel
        ],
      ),
    );
  }
}
