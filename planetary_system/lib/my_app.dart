import 'package:flutter/material.dart';
import 'package:planetary_system/pages/add_new_planet.dart';
import 'package:planetary_system/pages/home_page.dart';

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
          case HomePage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return const HomePage();
            });
          case AddNewPlanet.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return const AddNewPlanet();
            });
        }
      },
    );
  }
}
