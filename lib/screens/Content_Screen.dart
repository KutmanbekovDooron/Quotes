import 'package:flutter/material.dart';
import 'package:quotes/lists_content/HelperContent.dart';
import 'package:quotes/lists_content/list_pictures.dart';

class ContentScreen extends StatefulWidget {
  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  HelperContent helperContent = HelperContent();

  List<String> textContent = ["Со Смыслом", "adfl"];
  ContentEnum contentEnum = ContentEnum.pictures_1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
                children: textContent
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            contentEnum = ContentEnum.pictures_2;
                          });
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                child: Image(
                                  image: NetworkImage(
                                      "https://i.pinimg.com/originals/de/9a/48/de9a48acabb66d9ac8dde17ef3544aa6.jpg"),
                                )),
                            Text(e)
                          ],
                        ),
                      ),
                    )
                    .toList()),
          ),
          Expanded(
            flex: 10,
            child: GridView.count(
                crossAxisCount: 2,
                children: helperContent
                    .getContent(contentEnum)
                    .map((e) => Card(
                          child: Image(
                            image: NetworkImage(e),
                          ),
                        ))
                    .toList()),
          ),
        ],
      ),
    );
  }
}

enum ContentEnum {
  pictures_1,
  pictures_2,
}
