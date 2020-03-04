import 'package:flutter/material.dart';
import 'dashboard_drawer_menu.dart';

class LowerDrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          DashBoardDrawerMenu(
            text: 'Home',
            icon: Icons.home,
            onPressed: () {},
          ),
          DashBoardDrawerMenu(
            text: 'Backup and Restore',
            icon: Icons.home,
            onPressed: () {},
          ),
          DashBoardDrawerMenu(
            text: 'Settings',
            icon: Icons.home,
            onPressed: () {},
          ),
          DashBoardDrawerMenu(
            text: 'Ads Free',
            icon: Icons.home,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
