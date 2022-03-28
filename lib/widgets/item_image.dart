import 'package:flutter/material.dart';
import 'package:quotes/lists_content/HelperContent.dart';
import 'package:quotes/screens/Content_Screen.dart';

class ItemImage extends StatelessWidget {
  final String get_image;

  ItemImage(this.get_image);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        get_image,
        fit: BoxFit.fill,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        errorBuilder: (context, _, error) {
          return Center(child: Text("error"));
        },
      ),
    );
  }
}
