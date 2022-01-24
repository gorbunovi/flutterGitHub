import 'package:albums_route/artist_page.dart';
import 'package:albums_route/artists.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        switch(settings.name){
          case MyHomePage.routeName:
            return MaterialPageRoute(builder: (BuildContext context){
              return MyHomePage();
            });
          case ArtistsPage.routeName:
            return MaterialPageRoute(builder: (BuildContext context){
              return ArtistsPage();
            });
          case ArtistPage.routeName:
            final arg = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(builder: (BuildContext context){
              if(arg!=null && arg.containsKey('name') && arg.containsKey('about')){
              return ArtistPage(name: arg['name'], about: arg['about'],);
              };
            });
        default:
          return MaterialPageRoute(builder: (BuildContext context){
            return MyHomePage();
          });
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const routeName = '/';
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routes'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
         child:  Column(
          children: <Widget>[
            ListTile(
              selected: true,
              title: Text('Home',style: TextStyle(fontSize: 22.0),),
              onTap: (){
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              title: Text('Artists',style: TextStyle(fontSize: 22.0),),
              onTap: (){
                Navigator.of(context).pushNamed('/artists');
              },
            )

          ],
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Routes',
            ),
          ],
        ),
      ),
    );
  }
}
