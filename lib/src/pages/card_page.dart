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
        children: <Widget>[
          _card1(),
          const SizedBox(
            height: 30.0,
          ),
          _card2(),
          const SizedBox(
            height: 30.0,
          ),
          _card2WithContainer(),
        ],
      ),
    );
  }

  Widget _card1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20) //* Border a toda la card
          ),
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

  _card2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      clipBehavior:
          Clip.antiAlias, // * Evita que los elementos se salgan de la card
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://i.pinimg.com/originals/ba/ee/ac/baeeacb7ad04d4c791a35fae003a6780.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          /* const Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/ba/ee/ac/baeeacb7ad04d4c791a35fae003a6780.jpg'),
          ), */
          Container(
            child: const Text('Esta es una descripción de la imagen'),
            padding: const EdgeInsets.all(20),
          )
        ],
      ),
    );
  }

  _card2WithContainer() {
    final _card = Column(
      children: <Widget>[
        const FadeInImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/ba/ee/ac/baeeacb7ad04d4c791a35fae003a6780.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          fit: BoxFit.cover,
        ),
        Container(
          child: const Text('Otra descripción de la misma imagen'),
          padding: const EdgeInsets.all(20),
        )
      ],
    );

    final _borderContainer = BorderRadius.circular(30);

    return Container(
        decoration: BoxDecoration(
            borderRadius: _borderContainer,
            color: Colors.white,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(2, 10)),
            ]),
        child: ClipRRect(
          borderRadius: _borderContainer,
          child: _card,
        ));
  }
}
