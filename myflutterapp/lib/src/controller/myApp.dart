import 'package:flutter/material.dart';
import 'package:myflutterapp/src/pages/home_pages.dart';
//CLASE WIDGEST PRINCIPAL ENTENEMOS A MY APP//
class Myapp extends StatelessWidget{
  static const String _title = 'Flutter Example';
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : _title,
      home: MyHomeStateFulWidget(),
        );
  }
}
