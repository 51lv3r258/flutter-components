import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs de Texto'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[_createInput(), const Divider(), _createPerson()],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
        /* autofocus: true, */
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text('N° de Caracteres: ${_name.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: const Icon(Icons.accessibility_new_outlined),
          icon: const Icon(Icons.account_circle_outlined),
        ),
        onChanged: (value) => setState(() {
              _name = value;
            }));
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Mi nombre es $_name'),
    );
  }
}
