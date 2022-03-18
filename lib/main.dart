import 'package:flutter/material.dart';
import 'package:quotes/screens/Content_Screen.dart';
import 'package:quotes/screens/Favorite_Screen.dart';
import 'package:quotes/screens/List_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AppContainer());
  }
}

class AppContainer extends StatefulWidget {
  @override
  State<AppContainer> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  PageController pageController = PageController();

  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xff5C8795),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              bottomSelectedIndex = index;
            });
          },
          children: [ContentScreen(), FavoriteScreen(), ListScreen()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        items: const [
          BottomNavigationBarItem(
            label: "picture",
              icon: Icon(Icons.insert_comment)),
          BottomNavigationBarItem(
            label: "favorite",
              icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
            label:  "list",
              icon: Icon(Icons.list)),
        ],
        onTap: (page) {
          setState(() {
            bottomSelectedIndex = page;
            pageController.animateToPage(page,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
            pageController.jumpToPage(page);
          });
        },
      ),
    );
  }
}
