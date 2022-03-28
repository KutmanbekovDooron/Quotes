import 'package:flutter/material.dart';
import 'package:quotes/screens/Content_Screen.dart';
class ChangeCategory extends StatelessWidget {
  final void Function(ContentEnum) onPressed;
  final String name;
  final String get_image;
  final ContentEnum contentEnum;

  ChangeCategory({required this.onPressed, required this.name, required this.get_image,required this.contentEnum});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: (){
          onPressed(contentEnum);
        },
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4)),
                child: Image.network(
                  get_image,
                  fit: BoxFit.fitHeight,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  errorBuilder: (context, _, error) {
                    return Center(child: Text("error"));
                  },
                )),
            Text(name)
          ],
        ),
      ),
    );
  }
}
