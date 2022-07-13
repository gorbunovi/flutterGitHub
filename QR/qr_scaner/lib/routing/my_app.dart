import 'package:flutter/material.dart';
import 'package:qr_scaner/presentations/qr_scan/view/qr_scaner_page.dart';

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
      home: const QrScannerPage(),
    );
  }
}

