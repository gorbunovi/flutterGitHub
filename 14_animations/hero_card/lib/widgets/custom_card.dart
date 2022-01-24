
import 'package:flutter/material.dart';
import 'package:hero_card/components/image_card.dart';
import 'package:hero_card/components/text_card.dart';
import 'package:hero_card/components/space.dart';

class CustomCard extends StatelessWidget{
  CustomCard({Key key, this.spaces, this.index}): super(key: key);
  final List<Space> spaces;
  int index;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        shadowColor: Colors.blueGrey,
        elevation: 20,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 180,
                child: Column(
                  children: [
                    ImageCard(space: spaces[index]),
                    TextCard(space: spaces[index])
                  ],
                ),
              ),
            ]
        )
    );
  }
}