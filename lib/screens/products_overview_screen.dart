//import
import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

enum FilterOptions { Favorite, All }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  //state
  bool _showFavoriteItems = false;

  //methode
  void _onSelected(FilterOptions selected) {
    setState(() {
      if (selected == FilterOptions.Favorite) {
        _showFavoriteItems = true;
      } else {
        _showFavoriteItems = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Products'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selected) => _onSelected(selected),
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: const Text('Show Favorite'),
                value: FilterOptions.Favorite,
              ),
              PopupMenuItem(
                child: const Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
          )
        ],
      ),
      body: ProductGrid(_showFavoriteItems),
    );
  }
}
