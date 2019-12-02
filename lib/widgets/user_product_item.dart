//import
import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  // props
  final String titile;
  final String imageUrl;
  // constructor
  UserProductItem({@required this.titile, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final themeOf = Theme.of(context);

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(titile),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
              color: themeOf.primaryColor,
            ),
            IconButton(
              icon: Icon(Icons.delete_forever),
              onPressed: () {},
              color: themeOf.errorColor,
            ),
          ],
        ),
      ),
    );
  }
}
