import 'package:flutter/material.dart';

import 'package:roeah_ruchani_app/utils/theme.dart';
import 'package:roeah_ruchani_app/consts/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  void initState() { 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm By Alarm',
      theme: themeUtil.getTheme(),
      initialRoute: '/signup',
      onGenerateRoute: (settings) => routesConst.getRoute(settings),
      navigatorKey: navigatorKey,
    );
  }
}