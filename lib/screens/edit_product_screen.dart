// import
import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  // route name
  static const routeName = '/edit-product';
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  // our input focus
  final _priceFocus = FocusNode();
  final _descriptionFocus = FocusNode();

  // dispose
  @override
  void dispose() {
    _priceFocus.dispose();
    _descriptionFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_priceFocus);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
              focusNode: _priceFocus,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_descriptionFocus);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              maxLines: 3,
              keyboardType: TextInputType.multiline,
              focusNode: _descriptionFocus,
            ),
          ],
        ),
      ),
    );
  }
}
