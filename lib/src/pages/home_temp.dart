import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

final opciones=['uno','dos','tres','cuatro'];
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:Text('Componentes Temp'),
    ),
    body:ListView(
      //children: _crearitems(),
      children:_crearItemsCorto(),
    ),
  );

 }
 List<Widget> _crearitems(){
   List<Widget>  lista =new List<Widget>();

  for (var opt in opciones) {
    final tempWidget=ListTile(
      title: Text(opt),
    );
    lista..add(tempWidget)
          ..add(Divider(color:Colors.greenAccent));
    
  }
   return lista;
 }

 List<Widget> _crearItemsCorto(){
   return opciones.map((item){
     return Column(
       children: <Widget>[
         ListTile(
           title: Text(item),
           subtitle: Text('cualquier cosa'),
           leading: Icon(Icons.add_location),
           trailing: Icon(Icons.keyboard_arrow_right),
           onTap: (){},
         ),
         Divider(),
       ],
     );

   }).toList();
 }
}