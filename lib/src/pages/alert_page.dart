import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          onPressed: (){_mostrarAlerta(context);
          },
          child: Text('Show'),
          color: Colors.blue,
          textColor: Colors.white,
        ),
      ),
    );
  }
  void _mostrarAlerta(BuildContext context){
    showDialog(context: context,
        builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        title: Text('a'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text('contenido caja'),
            FlutterLogo(size: 50.0),
        ],
        ),
        actions: <Widget>[
          FlatButton(onPressed: ()=>Navigator.of(context).pop(), color: Colors.blue,
              child: Text('Cancelar')),
          FlatButton(onPressed: ()=>Navigator.of(context).pop(), color: Colors.blue,
              child: Text('Ok')),
        ],
      );
        },
      barrierDismissible: false,

    );
  }

}
