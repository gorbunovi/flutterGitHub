
import 'package:flutter/material.dart';

class PlanetarySystem extends StatefulWidget {
  const PlanetarySystem({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<PlanetarySystem> createState() => _PlanetarySystemState();
}

class _PlanetarySystemState extends State<PlanetarySystem> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '111',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add new planet',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}