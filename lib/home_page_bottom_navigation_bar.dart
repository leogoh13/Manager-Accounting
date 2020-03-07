import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:improving_your_ui/dashboard/dashboard_page.dart';
import 'package:improving_your_ui/settings/settings_page.dart';

class BottomBarAppNavigator extends StatefulWidget {
  BottomBarAppNavigator({
    this.initState: 0,
  });
  final int initState;
  @override
  _BottomBarAppNavigatorState createState() => _BottomBarAppNavigatorState();
}

class _BottomBarAppNavigatorState extends State<BottomBarAppNavigator> {
  int _page = 0;
  double iconSize = 20.0;
  Color iconColor;
  Color secondaryColor;
  GlobalKey navigationBarKey = GlobalKey();

  void changeColor(int index) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    iconColor = Colors.white;
    secondaryColor = Theme.of(context).primaryColor;

    final List<MaterialColor> colors = [
      Theme.of(context).primaryColor,
      Colors.red,
      Colors.pink,
      Colors.indigo,
    ];

    final List<Widget> bodyPages = [
      Dashboard(),
      Container(),
      SettingsPage(materialColor: colors[2]),
      Container(),
    ];

    final _curvedNavigationBarItems = <Widget>[
      Icon(
        Icons.home,
        size: iconSize,
        color: iconColor,
      ),
      Icon(
        Icons.library_books,
        size: iconSize,
        color: iconColor,
      ),
      Icon(
        Icons.settings,
        size: iconSize,
        color: iconColor,
      ),
      Icon(
        Icons.portrait,
        size: iconSize,
        color: iconColor,
      ),
    ];

    final _customBottomNavigationBar = CurvedNavigationBar(
      key: navigationBarKey,
      color: colors[_page],
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: colors[_page],
      height: 60,
      animationDuration: Duration(milliseconds: 300),
      animationCurve: Curves.decelerate,
      index: widget.initState,
      items: _curvedNavigationBarItems,
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
    assert(bodyPages.length == _curvedNavigationBarItems.length);

    return Scaffold(
      body: bodyPages[_page],
      bottomNavigationBar: _customBottomNavigationBar,
    );
  }
}
