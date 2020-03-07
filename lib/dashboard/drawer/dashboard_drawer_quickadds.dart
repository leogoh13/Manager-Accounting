import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improving_your_ui/dashboard/drawer/drawer_quick_adds_item.dart';

class DrawerQuickAdds extends StatefulWidget {
  @override
  _DrawerQuickAddsState createState() => _DrawerQuickAddsState();
}

class _DrawerQuickAddsState extends State<DrawerQuickAdds> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          DrawerQuickAddsItem(),
        ],
      ),
    );
  }
}
