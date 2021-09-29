import 'package:flutter/material.dart' show WidgetBuilder, BuildContext;

// * My imports
import '../pages/home_page.dart';
import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
  };
}
