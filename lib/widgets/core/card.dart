import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({ @required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF305172),
      ),
      child: child,
    );
  }
}
