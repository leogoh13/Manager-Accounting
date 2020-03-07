import 'package:flutter/material.dart';

class DrawerUserProfile extends StatelessWidget {
  final String email;
  final String companyName;

  DrawerUserProfile({
    this.email,
    this.companyName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.account_balance),
          Column(
            children: <Widget>[
              Text(
                email,
                style: TextStyle(),
              ),
              Text(
                companyName,
                style: TextStyle(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
