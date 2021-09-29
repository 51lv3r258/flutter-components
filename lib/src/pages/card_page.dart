import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[_card1()],
      ),
    );
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'sdajJK Ajsadsjka dja dkjad asK SASJD AKSD ASKJD ASJD ASKD ASD ASKD ASJD ASKD ASD AS DKJASDASDJASDJAS DASMK DASKJD JASD JAS AD AJSD'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              const SizedBox(width: 10),
              TextButton(onPressed: () {}, child: const Text('Ok')),
              const SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
