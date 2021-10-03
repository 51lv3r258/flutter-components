import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.red, shape: const StadiumBorder()),
          child: const Text('Mostrar Alerta'),
          onPressed: () => _showAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.keyboard_return_outlined),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // * Close on click to exterior to the card
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: const TextWhite(text: 'Titulo'),
          backgroundColor: Colors.blue,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              TextWhite(
                text: 'Este es el contenido de la caja de la alerta',
              ),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: <Widget>[
            TextButton(
                style: TextButton.styleFrom(primary: Colors.orange.shade200),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar')),
            TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Ok')),
          ],
        );
      },
    );
  }
}

class TextWhite extends StatelessWidget {
  const TextWhite({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white),
    );
  }
}
