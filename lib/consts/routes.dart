import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

// root
import 'package:roeah_ruchani_app/screens/home.dart';
import 'package:roeah_ruchani_app/screens/signin.dart';
import 'package:roeah_ruchani_app/screens/signup.dart';

class RoutesConst {
  getRoute(settings) {
    switch (settings.name) {
      case '/':
        return PageTransition(
            settings: RouteSettings(name: "/"),
            child: SigninScreen(),
            type: PageTransitionType.fade);
        break;

      case '/signin':
        return PageTransition(
            settings: RouteSettings(name: "/signin"),
            child: SigninScreen(),
            type: PageTransitionType.fade);
        break;

      case '/signup':
        return PageTransition(
            settings: RouteSettings(name: "/signup"),
            child: SignupScreen(),
            type: PageTransitionType.fade);
        break;

      case '/home':
        return PageTransition(
            child: HomeScreen(), type: PageTransitionType.fade);
        break;

      case '/account':
        return PageTransition(
            child: SigninScreen(), type: PageTransitionType.fade);
        break;

      case '/notifications':
        return PageTransition(
            child: SignupScreen(), type: PageTransitionType.fade);
        break;

      default:
        // TODO: add defualt 404
        return null;
    }
  }

  
  List<Map<String, dynamic>> routesInNavbar() {
    return [
      {
        "name": "הודעות",
        "icon": "a",
        "route": "/home",
      },
      {
        "name": "בית",
        "icon": "b",
        "route": "/home",
      },
      {
        "name": "חשבון",
        "icon": "c",
        "route": "/signin",
      },
    ];
  }

  bool isInNavbar(String route) {
    return routesInNavbar().any((routeDetails) => routeDetails["route"] == route);
  }

}

final RoutesConst routesConst = RoutesConst();
