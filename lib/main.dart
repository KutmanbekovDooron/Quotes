import 'package:flutter/material.dart';
import 'package:quotes/screens/Content_Screen.dart';
import 'package:quotes/screens/Favorite_Screen.dart';
import 'package:quotes/screens/List_Screen.dart';
import 'package:quotes/widgets/AppScaffold.dart';

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
    return AppScafolld();
  }
}
