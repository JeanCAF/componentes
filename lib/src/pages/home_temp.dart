import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Tanita Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider(height: 1,));
    }
    return lista;
  }
//segunda opcion de hacer un for para mostrar una lista 
  List<Widget> _crearItemsCorta() {
    return opciones.map(( item ){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.airline_seat_individual_suite),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(height: 1,)
        ],
      );
    }).toList();
  }
}