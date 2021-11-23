import 'package:flutter/material.dart';
 class MyHomeStateFulWidget extends StatefulWidget{
   MyHomeStateFulWidget({key}) : super(key : key);
   @override
   _MyHomeStateFulWidget createState()=> _MyHomeStateFulWidget();
 }

 class _MyHomeStateFulWidget extends State <MyHomeStateFulWidget>{
  int _count  =0;
   @override
   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App Count'),
        ),
        body:Center(
            child: Text('Conteo $_count'),
        ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
              child: Container(
              height: 50.0,
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () =>setState((){
          _count ++;
        }),
        tooltip: 'Clickme',
        child: Icon (Icons.add),
      ),
    );
  }
 }