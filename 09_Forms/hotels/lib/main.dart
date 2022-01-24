import 'package:flutter/material.dart';
import 'package:hotels/views/home_view.dart';
import 'package:hotels/views/hotel_view.dart';

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
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        switch(settings.name){
          case HomeView.routeName:
            return MaterialPageRoute(builder: (BuildContext context){
              return HomeView();
            });
          case HotelView .routeName:
            final arg = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(builder: (BuildContext context){
              if(arg!=null && arg.containsKey('name') && arg.containsKey('uuid')){
                return HotelView (name: arg['name'], uuid: arg['uuid'],);
              };
            });
            default:
            return MaterialPageRoute(builder: (BuildContext context){
              return HomeView();
            });
        }
      },
      // routes: {
      //   '/': (BuildContext context) => HomeView(),
      //   '/hotel': (BuildContext context) => HotelView(),
      // },
    );
  }
}
