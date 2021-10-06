import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// * My imports
import 'src/routes/routes.dart';
import 'src/pages/alert_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      /* home: HomePage(), */
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        // * If the route don't exists return page AlertPage
        return MaterialPageRoute(builder: (builder) => const AlertPage());
      },
      // routes: newMethod,
    );
  }
}
