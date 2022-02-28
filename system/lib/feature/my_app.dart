import 'package:flutter/material.dart';
import 'package:system/feature/presentation/pages/system_page.dart';




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlanetarySystem(title: 'Flutter Demo Home Page'),
    );
  }
}