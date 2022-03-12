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
      body: BlocBuilder<PlanetarySystemBloc, PlanetarySystemEntity>(
        builder: (context, PlanetarySystemEntity planetarySystem) {
          return Stack(
            children: [
              Center(
                child: Text(planetarySystem.planets.length.toString()),
              ),
            ],
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          final PlanetEvent resault = await  Navigator.pushNamed(context, '/AddNewPlanet') as PlanetEvent;
          print (resault);
          if(resault != null) _systemBloc.add(resault) ;
        },
        tooltip: 'Add new planet',
        child: const Icon(Icons.add),
      ),
    );
  }
}


