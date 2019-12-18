import 'package:flutter/material.dart';

import 'package:roeah_ruchani_app/consts/routes.dart';
import 'package:roeah_ruchani_app/widgets/core/clippedView.dart';
import 'package:roeah_ruchani_app/widgets/sheard/navbarItem.dart';

class NavbarWidget extends StatefulWidget {
  NavbarWidget({this.navigatorKey});
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  String _selectedRoute = "/home";

  void _onSelectRoute(String route) {
    setState(() {
      _selectedRoute = route;
      widget.navigatorKey.currentState.pushNamed(route);
    });
  }

  Widget _generateButton(Map<String, dynamic> route) {
    String text = _selectedRoute == route["route"] ? route["name"] : "";
    text += route["icon"];
    return NavbarItemWidget(
      onTap: () {_onSelectRoute(route["route"]);},
      icon: Icons.home,
      title: route["name"],
      isSelected: _selectedRoute == route["route"],
    );
  }

  List<Widget> _generateChildren() {
    return routesConst.routesInNavbar().map((route) {
      return Container(
        child: _generateButton(route),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).bottomAppBarColor,
        // color: Colors.green,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 16.0,
            spreadRadius: 5.0,
            offset: Offset(0, 15),
          )
        ],
      ),
      alignment: Alignment.center,
      child: ClippedViewWidget(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: _generateChildren(),
        ),
      ),
    );
  }
}
