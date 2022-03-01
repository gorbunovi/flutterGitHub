import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Planet> planets = [
    Planet(radius: 20, distance: 100, speed: 10),
    Planet(radius: 20, distance: 50, speed: 10),
    Planet(radius: 20, distance: 150, speed: 10),
  ];

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Center(
          child: Image.asset(
            'assets/images/ship.png',
            height: 50,
            width: 50,
          ),
        ),
        Column(
          children: [
            ...planets
                .map(
                  (e) => Column(
                children: [
                  e.image,
                ],
              ),
            ).toList()
          ],
        ),

      ],
    );
  }
}

class Planet {
  final double? radius;
  final double? speed;
  final double? distance;
  Image image = Image.asset(
    'assets/images/ship.png',
    height: 50,
    width: 50,
  );

  Planet({this.radius, this.speed, this.distance});
}
