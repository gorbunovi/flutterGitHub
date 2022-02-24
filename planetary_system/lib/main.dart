import 'package:buisnece_package/buisnece_package.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  BlocFactory.instance.initialize();
  runApp(const MyApp());
}
