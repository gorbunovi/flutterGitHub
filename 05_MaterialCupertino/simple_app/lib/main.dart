import 'package:flutter/material.dart';
import 'package:simple_app/show_bottom_sheet.dart';
import 'my_bottom_app_bar.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  // int tabIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      // ==========================Drawer=====================================
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: DrawerHeader(
                child: CircleAvatar(
                  radius: 68,
                  backgroundColor: Colors.green,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/1200/500'),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    //-----------------------Home------------------------------
                    ListTile(
                      title: Text('Home'),
                      leading: Icon(Icons.home),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        print('Home');
                      },
                    ),
                    //-----------------------Profile------------------------------
                    ListTile(
                      title: Text('Profile'),
                      leading: Icon(Icons.account_box_outlined),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        print('Profile');
                      },
                    ),
                    //-----------------------Images------------------------------
                    ListTile(
                      title: Text('Images'),
                      leading: Icon(Icons.image),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        print('Images');
                      },
                    ),
                  ],
                )),
            //-----------------------Bottom-------------------------------
            Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                        child: Text('Выход'),
                        onPressed: () {
                          print('Выход');
                        },
                      ),
                      RaisedButton(
                        child: Text('Регистрация'),
                        onPressed: () {
                          print('Регистрация');
                        },
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
      // ==========================EndDrawer=====================================
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.yellow,
                backgroundImage: NetworkImage('https://picsum.photos/1200/500'),
              ),
            ),
            Text('Username'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'simple app',
            ),
          ],
        ),
      ),
      // ==========================MyFloatingButton=====================================
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext cpntext) {
                return Container(
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      Column(children: <Widget>[
                        MyListTile(),
                        MyBotton(),
                      ]),
                    ],
                  ),
                );
              });
        },
      ),
      // ==========================MyFloatingButton=====================================
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
