import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    @required this.child,
    this.onPressed,
  });
  final Widget child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
