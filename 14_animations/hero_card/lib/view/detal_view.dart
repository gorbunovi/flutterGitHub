import 'package:flutter/material.dart';
import 'package:hero_card/components/space.dart';


class DetalView extends StatelessWidget{
  const DetalView({Key key, this.space}): super(key: key);
  final Space space;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detal space'),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: '${space.id}_image',
                child: Image.asset('${space.image}'),
              ),
              Hero(
                tag: '${space.id}_description',
                child: Material(
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text('${space.description}')
                    )
                ),
              ),
            ],
          )

      ),
    );
  }
}
