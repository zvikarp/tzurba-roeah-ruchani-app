import 'package:flutter/material.dart';

import 'package:roeah_ruchani_app/widgets/core/button.dart';
import 'package:roeah_ruchani_app/widgets/core/screen.dart';

class SigninScreen extends StatelessWidget {

  void _onPressSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _onPressSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signup');
  }

  Widget _logo() {
    return Container(
      child: Text("לוגו"),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        onPressed: () => _onPressSignIn(context),
        child: Text("הכנס עם חשבון גוגל"),
      ),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        onPressed: () => _onPressSignUp(context),
        child: Text("צור חשבון"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _logo(),
            _signInButton(context),
            _signUpButton(context),
          ],
        ),
      ),
    );
  }
}
