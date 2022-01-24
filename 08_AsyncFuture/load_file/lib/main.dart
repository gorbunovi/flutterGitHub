import 'package:flutter/material.dart';

import 'fetch_file.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Load file'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _fieldFileController = TextEditingController();
  String _nameFile = '';

  void getFileName(){
    setState(() {
      _nameFile = 'assets/${_fieldFileController.text}.txt';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: TextField(
                onEditingComplete: (){
                  getFileName();
                },
                controller: _fieldFileController,
                decoration: InputDecoration(
                  suffixIcon: TextButton(
                    child: Text('text', style: TextStyle(color: Colors.white),),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide(color: Colors.black, width: 7),
                        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)))
                    ),
                    onPressed: (){
                      getFileName();
                    },
                  ), //Icon(Icons.search, color: Colors.purple,),
                  hintText: 'Введите значение',
                  // helperText: 'Поле для поиска заметок',
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            FutureBuilder<String>(
                future: fetchFileFromAssets(_nameFile),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return Center(
                        child: Text('NONE'),
                      );
                      break;
                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator());
                      break;
                    case ConnectionState.done:
                      if (snapshot.data == null) {
                        return Center(child: Text('файл не найден'),);
                      } else {
                        return Container(child: SingleChildScrollView(child: Text(snapshot.data)),) ;
                      }

                      break;
                    default:
                      return SingleChildScrollView(
                        child: Text('Default'),
                      );
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}
