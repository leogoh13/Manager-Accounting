import 'package:flutter/material.dart';
import 'package:improving_your_ui/dashboard/drawer/dashboard_drawer_user_profile.dart';
import 'upper_drawer_column.dart';
import 'lower_drawer_menu.dart';

class DashBoardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            DrawerUserProfile(email: 'leogoh95@gmail.com', companyName: 'RaizerGames',),
            UpperDrawerMenu(),
            LowerDrawerMenu(),
          ],
        ),
      ),
    );
  }
}
