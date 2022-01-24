import 'package:flutter/material.dart';

import 'space.dart';


class TextCard extends StatelessWidget{
  TextCard({Key key, this.space}): super (key: key);
  final Space space;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Hero(
            tag: '${space.id}_description',
            child: Material(
              color: Colors.black38,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                height: double.infinity,
                color: Colors.black38,
                child: Text(
                  '${space.description}',
                  style: TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          Positioned(
            top: -20,
            right: 20,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.amberAccent,
              child: Icon(Icons.add),
            )
          ),
        ]
      ),
    );
  }
}