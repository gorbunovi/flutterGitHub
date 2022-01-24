import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listData = List.generate(50, (index) {
    return Card(
        elevation: 2.0,
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      // child: Text('$index')
             ),
                ),
              ],
            ),
          ],
        ));
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return constraints.constrainWidth() > 500 ? _horizont(listData) : _vertical(listData);
        },
      ),
    );
  }
}

Widget _horizont(List<Card> list){
  var listData = list;
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'List view divider',
        ),
        Expanded(
          child: ListView(
            children: listData.map((item) => item).toList(),
          ),
        ),
      ],
    ),
  );
}

Widget _vertical (List<Card> list){
  var listData = list;
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'List view divider',
        ),
        Expanded(
          flex: 1,
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            children: listData.map((item) => item).toList(),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(),
        )
      ],
    ),
  );
}