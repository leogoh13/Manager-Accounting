import 'package:flutter/material.dart';

class DashBoardDrawerMenu extends StatelessWidget {
  DashBoardDrawerMenu({
    @required this.text,
    @required this.icon,
    @required this.onPressed,
  });

  final String text;
  final IconData icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon,
              size: 30.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      onPressed: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Page()));
      },
    );
  }
}
