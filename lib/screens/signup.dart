import 'package:flutter/material.dart';

import 'package:roeah_ruchani_app/widgets/core/button.dart';
import 'package:roeah_ruchani_app/widgets/core/screen.dart';
import 'package:roeah_ruchani_app/widgets/core/textField.dart';

class SignupScreen extends StatelessWidget {
  void _onPressSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _onPressSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signin');
  }

  Widget _logo() {
    return Container(
      child: Text("לוגו"),
    );
  }

  Widget _tzInput() {
    return Container(
      child: TextFieldWidget(),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        onPressed: () => _onPressSignUp(context),
        child: Text("הירשם עם חשבון גוגל"),
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        onPressed: () => _onPressSignIn(context),
        child: Text("הכנס לחשבון קיים"),
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
            _tzInput(),
            _signUpButton(context),
            _signInButton(context),
          ],
        ),
      ),
    );
  }
}
