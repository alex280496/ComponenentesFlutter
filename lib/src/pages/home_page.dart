import 'package:flutter/material.dart';

import '../providers/menu.provider.dart';

class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: Text('Componentes'),
  ),
  body: _lista(),
 );
 }

  Widget _lista() {

   print(menuProvider.opciones);
    return ListView(
      children: _listaItems(),
    );
  }

 List<Widget> _listaItems() {
   return [
     ListTile(title: Text('hola mundi')),
     Divider(),
     ListTile(title: Text('hola mundi')),
     Divider(),
     ListTile(title: Text('hola mundi')),
     Divider(),

   ];
 }

}