import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget{
  MyBottomAppBar({Key key}): super(key: key);

  @override
  _MyBottomAppBarState createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar>{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.album),
              label: 'Albums',
            ),
          ]
      ),
    );
  }
}