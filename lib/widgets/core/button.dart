import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    @required this.child,
    this.onPressed,
    this.color,
    this.primary = true,
  });
  final Widget child;
  final Function onPressed;
  final Color color;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: primary
            ? color ?? Theme.of(context).primaryColor
            : Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
          side: primary
              ? BorderSide.none
              : BorderSide(color: color ?? Theme.of(context).primaryColor),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
