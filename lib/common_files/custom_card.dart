import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    @required this.borderRadius,
    @required this.cardColor,
    @required this.cardElevation,
    @required this.child,
  });

  final Color cardColor;
  final double cardElevation;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: cardColor,
        elevation: cardElevation,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: child,
      ),
    );
  }
}
