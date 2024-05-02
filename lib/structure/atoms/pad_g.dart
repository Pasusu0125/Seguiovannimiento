import "package:flutter/material.dart";

class Padd extends StatelessWidget {
  final double d;
  final double u;
  final double l;
  final double r;
  final Widget child;
  const Padd(
      {super.key,
      required this.d,
      required this.u,
      required this.l,
      required this.r,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: d,
        top: u,
        left: l,
        right: r,
      ),
      child: child,
    );
  }
}
