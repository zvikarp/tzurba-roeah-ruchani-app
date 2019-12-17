import 'package:flutter/material.dart';

import 'package:roeah_ruchani_app/widgets/core/button.dart';
import 'package:roeah_ruchani_app/widgets/core/screen.dart';
import 'package:roeah_ruchani_app/widgets/core/spacer.dart';

class SigninScreen extends StatelessWidget {

  void _onPressSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/app');
  }

  void _onPressSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signup');
  }

  Widget _logo() {
    return Container(
      child: Image.asset(
        'assets/images/logo.png',
        height: 100,
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        onPressed: () => _onPressSignIn(context),
        color: Color(0xFFFFFFFF),
        child: Text(
          "הכנס עם חשבון גוגל",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        color: Color(0xFFFFFFFF),
        primary: false,
        onPressed: () => _onPressSignUp(context),
        child: Text(
          "צור חשבון",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      child: Container(
        padding: EdgeInsets.all(32),
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SpacerWidget(height: 32),
              _logo(),
              SpacerWidget(height: 64),
              _signInButton(context),
              SpacerWidget(height: 32),
              _signUpButton(context),
              SpacerWidget(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
