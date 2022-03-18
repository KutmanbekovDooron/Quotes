import 'package:flutter/material.dart';
class AppScafolld extends StatelessWidget {
  const AppScafolld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xff5C8795),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.insert_comment)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(icon: Icon(Icons.list)),
        ],
        onTap: (page){

        },
      ),
    );
  }
}
