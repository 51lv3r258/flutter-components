import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://ichef.bbci.co.uk/news/640/cpsprodpb/A85B/production/_104299034_tv050571340.jpg'),
              radius: 25,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://media.wired.com/photos/5be9d68a5d7c6a7b81d79e25/master/pass/StanLee-610719480.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
