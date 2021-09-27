import 'package:flutter/material.dart';

// * My imports
import 'src/pages/home_page.dart';
// import 'src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Components App',
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
