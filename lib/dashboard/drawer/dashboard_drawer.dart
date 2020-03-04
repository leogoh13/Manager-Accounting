import 'package:flutter/material.dart';
import 'upper_drawer_column.dart';
import 'lower_drawer_menu.dart';

class DashBoardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            UpperDrawerMenu(),
            LowerDrawerMenu(),
          ],
        ),
      ),
    );
  }
}
