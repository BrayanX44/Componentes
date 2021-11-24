import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {
  final List opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(children: _crearItemsPro()),
    );
  }

  List<Widget> _crearItem() {
    List<Widget> listaNoob = <Widget>[];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt + ' :p'),
      );
      listaNoob..add(tempWidget)..add(Divider());
    }

    return listaNoob;
  }

  List<Widget> _crearItemsPro() {
    return opciones.map((item) {
      return ListTile (
          title: Text(item)
      );
    }).toList();
  }


  List<Widget> _crearListo() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.adaptive.flip_camera),
            trailing: Icon(Icons.arrow_right),
            title: Text(item + ':v'),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
