import 'package:flutter/material.dart';

import 'package:roeah_ruchani_app/widgets/core/button.dart';
import 'package:roeah_ruchani_app/widgets/core/screen.dart';
import 'package:roeah_ruchani_app/widgets/core/spacer.dart';
import 'package:roeah_ruchani_app/widgets/core/textField.dart';

class SignupScreen extends StatelessWidget {
  void _onPressSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/app');
  }

  void _onPressSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signin');
  }

  Widget _logo() {
    return Container(
      child: Image.asset(
        'assets/images/logo.png',
        height: 100,
      ),
    );
  }

  Widget _nameInput() {
    return Container(
      child: TextFieldWidget(
        hintText: "שם",
        textColor: Color(0xFFFFFFFF),
      ),
    );
  }

  Widget _tzInput() {
    return Container(
      child: TextFieldWidget(
        hintText: "תעודת זהות",
        textColor: Color(0xFFFFFFFF),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _signUpButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        onPressed: () => _onPressSignUp(context),
        color: Color(0xFFFFFFFF),
        child: Text(
          "הירשם עם חשבון גוגל",
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return Container(
      child: ButtonWidget(
        color: Color(0xFFFFFFFF),
        primary: false,
        onPressed: () => _onPressSignIn(context),
        child: Text(
          "הכנס לחשבון קיים",
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
              _nameInput(),
              SpacerWidget(height: 32),
              _tzInput(),
              SpacerWidget(height: 32),
              _signUpButton(context),
              SpacerWidget(height: 32),
              _signInButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
