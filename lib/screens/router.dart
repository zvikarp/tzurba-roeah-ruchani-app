import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:roeah_ruchani_app/consts/routes.dart';
import 'package:roeah_ruchani_app/widgets/sheard/navbar.dart';
import 'package:roeah_ruchani_app/utils/routeObserver.dart';

class RouterScreen extends StatefulWidget {
  @override
  _RouterScreenState createState() => _RouterScreenState();
}

class _RouterScreenState extends State<RouterScreen> {
  RouteObserverUtil routeObserver;
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  String _selectedScreen = "/";
  bool _showNavbar = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    routeObserver = RouteObserverUtil(onChange: onChangeScreen);
  }

  void onChangeScreen(String screen) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _selectedScreen = screen;
        _showNavbar = routesConst.isInNavbar(screen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        observers: [routeObserver],
        initialRoute: '/signup',
        onGenerateRoute: (settings) => routesConst.getRoute(settings),
        key: navigatorKey,
      ),
      bottomNavigationBar: _showNavbar
          ? NavbarWidget(navigatorKey: navigatorKey)
          : Container(height: 0, width: 0),
    );
  }
}
