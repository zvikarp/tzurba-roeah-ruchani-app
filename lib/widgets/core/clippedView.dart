import 'package:flutter/material.dart';

class ClippedViewWidget extends StatelessWidget {
  final Widget child;
  final Axis clipDirection;

  const ClippedViewWidget({Key key, this.child, this.clipDirection = Axis.horizontal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: clipDirection,
      child: child,
    );
  }
}