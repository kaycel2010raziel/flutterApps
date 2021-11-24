import 'package:flutter/material.dart';
import 'package:myflutterapp/src/pages/drawer_gallery.dart';
import 'package:myflutterapp/src/pages/drawer_import.dart';

class Home extends StatefulWidget{
  HomeState createState() =>HomeState();
}

class HomeState extends State<Home>{
  //funcion pra cambiar de pantallas//
  int _selectDrawer = 0; //por defecto la pantalla importar//
  _getDrawerItemWidget(int pos){
    switch(_selectDrawer){
      case 0: return Import();
      case 1: return Gallery();
    }
  }
  //funcion a llamar para cambiar de pantallas Drawer list//
  _onSelectItem(int pos){
    Navigator.of(context).pop(); //repintar las opciones en el body//
    setState(() {
      _selectDrawer = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATLAS'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/SIE_2016.png/1024px-SIE_2016.png?1637776980889'),
              ),
              accountEmail: Text('www.sie.gob.gt'),
              accountName: Text(
                'Atlas',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
              title: Text('Import'),
              leading: Icon(Icons.camera_alt),
              selected: (0 == _selectDrawer),
              onTap: (){
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('Gallery'),
              leading: Icon(Icons.photo_library),
              selected: (1 == _selectDrawer),
              onTap: (){
                _onSelectItem(1);
              },
            ),
            Divider(),
          ],
        ),
      ),
     body: _getDrawerItemWidget(_selectDrawer), //enviarmos por defecto la pantalla importar//
    );
  }
}