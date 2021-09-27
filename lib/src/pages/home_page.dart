import 'package:flutter/material.dart';

import '../providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: const [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) => ListView(
              children: _listItems(snapshot.data),
            ));
  }

  List<Widget> _listItems(List<dynamic>? data) {
    final List<Widget> options = [];

    for (var opt in (data ?? [])) {
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: const Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right_outlined,
          color: Colors.blue,
        ),
        onTap: () => {},
      );

      options
        ..add(widgetTemp)
        ..add(const Divider(
          height: 1,
        ));
    }

    return options;
  }
}
