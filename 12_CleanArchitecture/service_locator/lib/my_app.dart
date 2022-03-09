import 'package:buisnece_packege/buisnece_packege.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_locator/pages/my_home_page.dart';
import 'package:service_locator/pages/second_page.dart';

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
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (BuildContext context) {
              return BlocProvider(
                create: (context) => BlocFactory.instance.get<CounterBloc>(),
                child: const MyHomePage(),
              );
            });
          case '/SecondPage':
            return MaterialPageRoute(builder: (BuildContext context) {
              return BlocProvider(
                create: (context) => BlocFactory.instance.get<CounterBloc>(),
                child: const SecondPage(),
              );
            });
        }
      },
    );
  }
}
