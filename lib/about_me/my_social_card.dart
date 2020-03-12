import 'package:flutter/material.dart';
import 'package:improving_your_ui/common_files/custom_card.dart';

class MySocialCard extends CustomCard {
  final double borderRadius;
  final Color cardColor;
  final double cardElevation;
  final String text;
  final String assetString;

  MySocialCard({
    this.assetString,
    this.text,
    this.borderRadius,
    this.cardColor,
    this.cardElevation,
  }) : super(
          child: Column(
            children: <Widget>[
              Image.asset(assetString),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          borderRadius: borderRadius,
          cardElevation: cardElevation,
          cardColor: cardColor,
        );
}
