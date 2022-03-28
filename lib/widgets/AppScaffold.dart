import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quotes/screens/Content_Screen.dart';
import 'package:quotes/screens/Favorite_Screen.dart';
import 'package:quotes/screens/List_Screen.dart';
class AppScafolld extends StatefulWidget {

  @override
  State<AppScafolld> createState() => _AppScafolldState();
}

class _AppScafolldState extends State<AppScafolld> {
  PageController pageController = PageController();
  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xff5C8795),
      body: PageView(
        scrollBehavior: AppScrollBehavior(),
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            bottomSelectedIndex = index;
          });
        },
        children: [ContentScreen(), FavoriteScreen(), ListScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        items: const [
          BottomNavigationBarItem(
              label: "picture",
              icon: Icon(Icons.insert_comment)),
          BottomNavigationBarItem(
              label: "favorite",
              icon: Icon(Icons.bookmark_rounded)),
          BottomNavigationBarItem(
              label:  "list",
              icon: Icon(Icons.list)),
        ],
        onTap: (page) {
          setState(() {
            bottomSelectedIndex = page;
            pageController.jumpToPage(page);
          });
        },
      ),
    );
  }
}
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {};
}
