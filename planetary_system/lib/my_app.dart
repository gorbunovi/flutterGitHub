import 'package:buisnece_package/buisnece_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planetary_system/pages/add_new_planet.dart';
import 'package:planetary_system/pages/planetary_system_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case PlanetarySystemPage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return BlocProvider(
                create: (context) => BlocFactory.instance.get<PlanetarySystemBloc>(),
                child: PlanetarySystemPage(),
              );
            });
          case '/AddNewPlanet':
            return MaterialPageRoute(builder: (BuildContext context) {
              return AddNewPlanetPage();
            });
        }
      },
    );
  }
}
