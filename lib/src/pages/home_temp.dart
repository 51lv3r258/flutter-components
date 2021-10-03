import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key? key}) : super(key: key);

  final options = const ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components Temp'),
        ),
        body: ListView(
          children: _createShortItems(),
        ));
  }

  /* List<Widget> _createItems() {
    List<Widget> list = <Widget>[];

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list
        ..add(tempWidget)
        ..add(const Divider());
    }

    return list;
  } */

  List<Widget> _createShortItems() {
    return options.map((option) {
      return Column(
        children: [
          ListTile(
            title: Text('$option!'),
            subtitle: const Text('Cualquier cosa'),
            leading: const SizedBox(
              child: Icon(Icons.access_time),
              height: double.maxFinite, // * Center leading Icon
            ),
            trailing: const Icon(Icons.keyboard_arrow_right_outlined),
            onTap: () => {},
          ),
          const Divider(
            height: 1,
          ),
        ],
      );
    }).toList();
  }
}
