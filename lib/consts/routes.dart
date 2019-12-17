import 'package:page_transition/page_transition.dart';

// root
import 'package:roeah_ruchani_app/screens/router.dart';
import 'package:roeah_ruchani_app/screens/app.dart';
import 'package:roeah_ruchani_app/screens/home.dart';
import 'package:roeah_ruchani_app/screens/signin.dart';
import 'package:roeah_ruchani_app/screens/signup.dart';

class RoutesConst {
  getRoute(settings) {
    switch (settings.name) {

      case '/':
        return PageTransition(
            child: RouterScreen(), type: PageTransitionType.fade);
        break;

      case '/app':
        return PageTransition(
            child: AppScreen(), type: PageTransitionType.fade);
        break;

      case '/signin':
        return PageTransition(
            child: SigninScreen(), type: PageTransitionType.fade);
        break;

      case '/signup':
        return PageTransition(
            child: SignupScreen(), type: PageTransitionType.fade);
        break;
      
      default:
        // TODO: add defualt 404
        return null;
    }
  }

  List<Map<String, dynamic>> appRoutes() {
    return [
      {
        "name": "הודעות",
        "icon": "a",
        "route": "/notifications",
      },
      {
        "name": "בית",
        "icon": "b",
        "route": "/home",
      },
      {
        "name": "חשבון",
        "icon": "c",
        "route": "/account",
      },
    ];
  }

  getAppRoute(settings) {
    switch (settings.name) {

      case '/app':
        return PageTransition(
            child: RouterScreen(), type: PageTransitionType.fade);
        break;

      case '/app/home':
        return PageTransition(
            child: HomeScreen(), type: PageTransitionType.fade);
        break;

      case '/app/account':
        return PageTransition(
            child: SigninScreen(), type: PageTransitionType.fade);
        break;

      case '/app/notifications':
        return PageTransition(
            child: SignupScreen(), type: PageTransitionType.fade);
        break;
      
      default:
        // TODO: add defualt 404
        return null;
    }
  }
}

final RoutesConst routesConst = RoutesConst();
