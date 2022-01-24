import 'package:flutter/material.dart';
import 'package:hero_card/components/space.dart';


class ImageCard extends StatelessWidget{
  ImageCard({Key key, this.space}): super(key: key);
  final Space space;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Hero(
            tag: '${space.id}_image',
            child: SizedBox(
              width: double.infinity,
              child: Image.asset('${space.image}',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}