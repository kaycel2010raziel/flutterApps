import 'package:flutter/material.dart';
import 'package:myflutterapp/src/pages/dramer_page.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'ATLAS DRAWER';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}