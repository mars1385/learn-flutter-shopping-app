//import
import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ProuductItem extends StatelessWidget {
  //props
  final String id;
  final String title;
  final String imageUrl;
  //constructor
  ProuductItem(
      {@required this.id, @required this.title, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    //theme
    final themeOf = Theme.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetailScreen.routeName, arguments: id);
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          title: Text(title),
          backgroundColor: Colors.black87,
          leading: IconButton(
            color: themeOf.accentColor,
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          trailing: IconButton(
            color: themeOf.accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
