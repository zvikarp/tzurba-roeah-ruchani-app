import 'package:flutter/material.dart';
import 'package:roeah_ruchani_app/consts/routes.dart';
import 'package:roeah_ruchani_app/widgets/sheard/navbar.dart';
import 'package:roeah_ruchani_app/utils/routeObserver.dart';
class RouterScreen extends StatefulWidget {
  @override
  _RouterScreenState createState() => _RouterScreenState();
}

class _RouterScreenState extends State<RouterScreen> {
  RouteObserverUtil routeObserver;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    routeObserver = RouteObserverUtil(onChange: onChange);
  }

  void onChange(String page) {
    print(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        observers: [routeObserver],
        initialRoute: '/signup',
        onGenerateRoute: (settings) => routesConst.getRoute(settings),
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}