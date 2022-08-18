import 'package:flutter/material.dart';

import 'contact.dart';
import 'home.dart';
import 'list_view_demo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //1.constructor

  @override
  Widget build(BuildContext buildContext) {
    //2.build
    return MaterialApp(
      home: ListViewPage(),
    );
  }
}
