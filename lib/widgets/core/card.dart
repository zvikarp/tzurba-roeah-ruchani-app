import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({ @required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).backgroundColor,
      ),
      child: child,
    );
  }
}
