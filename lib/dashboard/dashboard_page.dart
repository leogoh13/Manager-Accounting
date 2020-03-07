import 'package:flutter/material.dart';
import 'package:improving_your_ui/dashboard/add_new_account_dialog.dart';
import 'package:improving_your_ui/dashboard/dashboard_account_card.dart';
import 'package:improving_your_ui/dashboard/drawer/dashboard_drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dashboard',
            style: TextStyle(fontSize: 28),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add, semanticLabel: 'Add a new account'),
              iconSize: 25.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewAccountDialog(context: context),
                  ),
                );
              },
            ),
          ],
        ),
        drawer: DashBoardDrawer(),
        body: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  DashboardAccountCard(
                    context: context,
                    accountName: 'Test Account 1',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
