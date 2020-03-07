import 'package:flutter/material.dart';

class DrawerQuickAddsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/icon_pack/001-online banking.png'),
            Text('Sale'),
          ],
        ),
      ),
    );
  }
}
