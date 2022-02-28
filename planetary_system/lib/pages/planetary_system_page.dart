import 'package:buisnece_package/buisnece_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetarySystemPage extends StatefulWidget {
  static const routeName = '/';
  const PlanetarySystemPage({Key? key}) : super(key: key);

  @override
  State<PlanetarySystemPage> createState() => _PlanetarySystemPageState();
}

class _PlanetarySystemPageState extends State<PlanetarySystemPage> {

  late final PlanetarySystemBloc _systemBloc = BlocProvider.of<PlanetarySystemBloc>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
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
