import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _lockCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
          child: Column(
        children: [
          _crearSlider(),
          _crearCheckBox(),
          _crearSwitch(),
          Expanded (
              child: _crearImagen()),
        ],
      )),
    );
  }
Widget _crearImagen(){
return Image(
  image: NetworkImage('https://lh5.googleusercontent.com/proxy/xkcaalcLOjCLEVgZNOyeeFhpAQdNb3aB0sBRkzcd3Cg2_KLvdrtz_7uWsWUGZFtIy2hzitKfQ-jRl6FiqmC5tEpN_LYOycRJezfFc0MnhWYKI3PBJj7YVo_D67POP6wBc8FrrrP6IpYhjdsDSw'),
  width: _valorSlider,
  fit: BoxFit.contain,
);
}

  Widget _crearCheckBox(){
  //   return Checkbox(
  //       value: _lockCheck,
  //       onChanged: (valor){
  //         setState(() {
  //           _lockCheck  = valor!;
  //         });
  //       });
  // }

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
        value: _lockCheck,
        onChanged: (valor){
          setState(() {
            _lockCheck  = valor!;
          });
        });
  }

Widget _crearSwitch(){
  return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _lockCheck,
      onChanged: (valor){
        setState(() {
          _lockCheck  = valor;
        });
      });
}

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        //divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 500.0,
        onChanged: (_lockCheck) ? null : (valor) {
          setState(() {
            _valorSlider = valor;
          });
        });
  }
}
