import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text('ProCard'),
              subtitle: Text('Hola, soy la tarjeta pro tactica'),
              leading: Icon(Icons.photo_album, color: Colors.blue)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip(),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://cdn.dribbble.com/users/2030268/screenshots/11112133/media/d52794c161f4c5b6546c8d15237a8670.png'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Mi casa'),
          )
        ],
      ),
    );
    return Container(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: card,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
             blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0 , 10.0),
          )
        ],
        borderRadius: BorderRadius.circular(25.0),
        //color: Colors.blue,
      ),
    );
  }
}
