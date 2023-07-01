import 'package:flutter/material.dart';


class Constraintor extends StatelessWidget {
  Widget child;
  BoxConstraints constraints;
  Constraintor({super.key, required this.child,required this.constraints});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth < 1200? constraints.maxWidth:1200,
      child: child,
    );
  }
}