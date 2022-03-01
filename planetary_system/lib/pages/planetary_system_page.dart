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
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: Stack(
        children: [
          Center(
            
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add new planet',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
