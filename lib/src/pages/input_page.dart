import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _opcionSeleccionada = 'volar';
  List<String> _poderes = ['volar', 'copiar poder', 'espada', 'fuego', 'rayo'];

  TextEditingController _inputFileDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: TextField(
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            counter: Text('${_nombre.length}'),
            hintText: ('Nombre'),
            labelText: ('nombre'),
            helperText: ('Primer nombre y Primer apellido'),
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.account_circle),
          ),
          onChanged: (nombre) => setState(() {
                _nombre = nombre;
              })),
    );
  }

  Widget _crearFecha(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: TextField(
        enableInteractiveSelection: false,
        controller: _inputFileDateController,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: ('Fecha de nacimiento'),
          labelText: ('fecha de nacimiento'),
          helperText: ('AAAA/MM/DD'),
          suffixIcon: Icon(Icons.calendar_view_month),
          icon: Icon(Icons.calendar_today),
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        },
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1940),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFileDateController.text = _fecha;
      });
    }
    ;
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 25.0),
        DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
            setState(() {
              _opcionSeleccionada = opt.toString();
            });
          },
        )
      ],
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('E-mail: $_email'),
      trailing: Text(_opcionSeleccionada),
    );
  }

  Widget _crearEmail() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: ('Email'),
            labelText: ('e-mail'),
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.email),
          ),
          onChanged: (email) => setState(() {
                _email = email;
              })),
    );
  }

  Widget _crearPassword() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: ('Contraseña'),
            labelText: ('contraseña'),
            suffixIcon: Icon(Icons.password),
            icon: Icon(Icons.lock),
          ),
          onChanged: (password) => setState(() {
                _password = password;
              })),
    );
  }
}
