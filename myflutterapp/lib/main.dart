import 'package:flutter/material.dart';
import 'package:myflutterapp/src/controller/drawer.dart';

void main() => runApp(Aplication());
class Aplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegation Drawer',
      home: Home(),
      theme: ThemeData(
          primaryColor: Colors.blue,
          //accentColor: Color(0XFFFDD303)
      ),
    );
  }
}


