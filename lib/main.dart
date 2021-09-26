import 'package:flutter/material.dart';

// * My imports
import 'src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text(
            'Components',
            textAlign: TextAlign.center,
          ),
        )),
        body: const HomePageTemp(),
      ),
    );
  }
}
