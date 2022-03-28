import 'package:flutter/material.dart';
import 'package:quotes/lists_content/HelperContent.dart';
import 'package:quotes/lists_content/list_pictures.dart';
import 'package:quotes/widgets/change_category.dart';
import 'package:quotes/widgets/item_image.dart';

class ContentScreen extends StatefulWidget {
  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  HelperContent helperContent = HelperContent();

  List<SelectCategory> textContent = [
    SelectCategory(
      name: 'Со Смыслом',
      contentEnum: ContentEnum.category_pictures_1,
      image:
          "https://i.pinimg.com/originals/de/9a/48/de9a48acabb66d9ac8dde17ef3544aa6.jpg",
    ),
    SelectCategory(
        name: 'asdasd',
        contentEnum: ContentEnum.category_pictures_2,
        image: "https://azan.kz/media/images/57d02609dc781.jpg"),
  ];
  ContentEnum contentEnum = ContentEnum.category_pictures_1;

  void changeEnum(ContentEnum content) {
    setState(() {
      contentEnum = content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: textContent
                    .map((e) => Container(
                        height: 40,
                        child: ChangeCategory(
                            onPressed: changeEnum,
                            name: e.name,
                            get_image: e.image,
                            contentEnum: e.contentEnum)))
                    .toList()),
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                children: helperContent
                    .getContent(contentEnum)
                    .map((e) => ItemImage(e))
                    .toList()),
          ),
        ],
      ),
    );
  }
}

class SelectCategory {
  String image;
  String name;
  ContentEnum contentEnum;

  SelectCategory(
      {required this.name, required this.contentEnum, required this.image});
}

enum ContentEnum {
  category_pictures_1,
  category_pictures_2,
  category_pictures_3,
  category_pictures_4,
}
