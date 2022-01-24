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
  List<Widget> data = List.generate(100, (index) {
    return Card(
        elevation: 2.0,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('$index')),
                ),
              ],
            )
          ],
        ));
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal list'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: data.length,
                separatorBuilder: (BuildContext context, int index) =>
                  Divider(color: Colors.grey,  thickness: 2,),
                  itemBuilder: (context, index) => data[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}
