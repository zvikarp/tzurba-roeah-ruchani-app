import 'package:flutter/material.dart';

import 'package:roeah_ruchani_app/consts/routes.dart';
import 'package:roeah_ruchani_app/widgets/core/button.dart';

class NavbarWidget extends StatefulWidget {
  NavbarWidget({this.child});
  final Widget child;

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  String _selectedRoute = "/app/home";

  void _onSelectRoute(String route) {
    setState(() {
      _selectedRoute = route;
      Navigator.pushNamed(context, route);
    });
  }

  Widget _generateButton(Map<String, dynamic> route) {
    String text = _selectedRoute == route["route"] ? route["name"] : "";
    text += route["icon"];
    return AnimatedContainer(
      padding: EdgeInsets.symmetric(horizontal: 32),
      duration: Duration(milliseconds: 500),
      child: ButtonWidget(
        onPressed: () => _onSelectRoute(route["route"]),
        child: Text(text),
      ),
    );
  }

  List<Widget> _generateChildren() {
    return routesConst.appRoutes().map((route) {
      return Container(
        child: _generateButton(route),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).bottomAppBarColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 16.0,
              spreadRadius: 5.0,
              offset: Offset(0, 15),
            )
          ],
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: _generateChildren(),
          ),
        ));
  }
}
