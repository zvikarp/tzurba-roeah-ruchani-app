import 'package:page_transition/page_transition.dart';

// root
import 'package:roeah_ruchani_app/screens/router.dart';
import 'package:roeah_ruchani_app/screens/home.dart';
import 'package:roeah_ruchani_app/screens/signin.dart';
import 'package:roeah_ruchani_app/screens/signup.dart';

class RoutesConst {
  getRoute(settings) {
    switch (settings.name) {

      // root
      case '/':
        return PageTransition(
            child: RouterScreen(), type: PageTransitionType.fade);
        break;

      case '/home':
        return PageTransition(
            child: HomeScreen(), type: PageTransitionType.fade);
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
}

final RoutesConst routesConst = RoutesConst();
