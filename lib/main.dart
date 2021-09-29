import 'package:flutter/material.dart';

// * My imports
import 'src/pages/avatar_page.dart';
import 'src/pages/home_page.dart';
import 'src/pages/alert_page.dart';
// import 'src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      /* home: HomePage(), */
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePage(),
        'alert': (BuildContext context) => const AlertPage(),
        'avatar': (BuildContext context) => const AvatarPage(),
      },
      // routes: newMethod,
    );
  }
}
