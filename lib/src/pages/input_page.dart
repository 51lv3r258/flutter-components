import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _password = '';
  bool _passwordHidden = true;
  String _date = '';

  final TextEditingController _inputFieldDateCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs de Texto'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          _createInput(),
          const Divider(),
          _createEmail(),
          const Divider(),
          _createPassword(),
          const Divider(),
          _createDate(context),
          const Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
        /* autofocus: true, */
        keyboardType: TextInputType.name,
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

  Widget _createEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: const Icon(Icons.alternate_email),
          icon: const Icon(Icons.email_outlined),
        ),
        onChanged: (value) => setState(() {
              _email = value;
            }));
  }

  Widget _createPassword() {
    return TextField(
        obscureText: _passwordHidden,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Password',
          labelText: 'Password',
          icon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
              onPressed: () =>
                  setState(() => _passwordHidden = !_passwordHidden),
              icon: AnimatedCrossFade(
                duration: const Duration(milliseconds: 300),
                firstChild: const Icon(Icons.visibility_off_outlined),
                secondChild: const Icon(Icons.visibility_outlined),
                crossFadeState: _passwordHidden
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstCurve: Curves.easeInBack,
                secondCurve: Curves.easeOutBack,
              )),
        ),
        onChanged: (value) => _password = value);
  }

  Widget _createDate(BuildContext context) {
    return TextField(
        enableInteractiveSelection: false,
        controller: _inputFieldDateCtrl,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Fecha de Nac.',
          labelText: 'Fecha de Nac.',
          icon: const Icon(Icons.calendar_today_outlined),
          suffixIcon: const Icon(Icons.perm_contact_calendar_outlined),
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          _selectDate(context);
        });
  }

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime.now()
        locale: const Locale('es', 'ES')
        );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateCtrl.text = _date;
      });
    }
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Mi nombre es $_name'),
      subtitle: Text('Mi correo es $_email'),
    );
  }
}
