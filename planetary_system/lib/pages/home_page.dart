import 'package:flutter/material.dart';

class PlanetarySystemPage extends StatefulWidget {
  static const routeName = '/';
  const PlanetarySystemPage({Key? key}) : super(key: key);

  @override
  State<PlanetarySystemPage> createState() => _PlanetarySystemPageState();
}

class _PlanetarySystemPageState extends State<PlanetarySystemPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      Navigator.of(context).pushNamed('/AddNewPlanet');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
