import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> entries = <String>['OPCION A', 'OPCION B', 'OPCION C'];
  final List<int> colorCodes = <int>[600,400,500];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body:ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                 // color: Colors.amber[colorCodes[index]],
                  child: Center(child: Text('Action ${entries[index]}')),
                );
              }
          ),

      ),
    );
  }
}