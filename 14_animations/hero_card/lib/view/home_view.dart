import 'package:flutter/material.dart';
import 'package:hero_card/components/space.dart';
import '../widgets/custom_card.dart';
import 'detal_view.dart';


class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView.builder(itemCount: spaces.length, itemBuilder: (
            BuildContext context, int index){
          return GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> DetalView(space: spaces[index]),
                  ),
                );
              },
              child: CustomCard(spaces: spaces, index: index,)
          );
        })
    );
  }
}