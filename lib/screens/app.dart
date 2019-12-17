import 'package:flutter/material.dart';
import 'package:roeah_ruchani_app/consts/routes.dart';
import 'package:roeah_ruchani_app/widgets/sheard/navbar.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        initialRoute: '/app',
        onGenerateRoute: (settings) => routesConst.getAppRoute(settings),
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
