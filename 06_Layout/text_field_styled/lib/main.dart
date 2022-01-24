import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text field styled'),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: TextButton(
                      child: Text('text', style: TextStyle(color: Colors.white),),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple,
                        side: BorderSide(color: Colors.purple, width: 7),
                        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)))
                      ),
                      onPressed: (){
                        print('press');
                      },
                    ), //Icon(Icons.search, color: Colors.purple,),
                    hintText: 'Введите значение',
                    helperText: 'Поле для поиска заметок',
                    labelText: 'Search',
                    labelStyle: TextStyle(color: Colors.purple),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              padding: EdgeInsets.all(30),
            ),
          ],
        ),
    );
  }
}
