import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/icons/game-controller-30.png',
            image_caption: 'Gaming',
          ),
          Category(
            image_location: 'images/icons/icons8-tv-50.png',
            image_caption: 'TV',
          ),
          Category(
            image_location: 'images/icons/laptop-40.png',
            image_caption: 'Laptop',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          height: 40.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 40.0,
            ),
            subtitle: Center(child: Text(image_caption, style: TextStyle(fontSize: 17.0),)),
          ),
        ),
      ),
    );
  }
}
