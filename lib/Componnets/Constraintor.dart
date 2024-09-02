import 'package:flutter/material.dart';


class Constraintor extends StatelessWidget {
  final Widget child;
  final BoxConstraints constraints;
  const Constraintor({super.key, required this.child,required this.constraints});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth < 1200? constraints.maxWidth:1200,
      child: child,
    );
  }
}