import 'package:flutter/material.dart';
import 'package:module_domen/module_domen.dart';

import 'my_app.dart';

void main() {
  BlocFactory.instance.initialize();
  runApp(const MyApp());
}
