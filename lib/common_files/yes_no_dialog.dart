import 'package:flutter/material.dart';

/// CustomAlertDialog uses [SimpleDialog]
/// Can enter [title], [content], and [actions] (FlatButton is mostly used for action)
/// The actions will be placed starting from the bottom right side.

class CustomYesNoDialog extends StatelessWidget {
  final Widget dialogContent;
  final String title;
  final String semanticLabel;
  final double borderRadius;
  final String hintText;
  final String labelText;
  final String yesButton;
  final String noButton;
  final VoidCallback onPressedYes;
  final VoidCallback onPressedNo;

  CustomYesNoDialog({
    @required this.title,
    @required this.dialogContent,
    this.semanticLabel: '',
    this.borderRadius: 2.0,
    this.yesButton: 'Yes',
    this.noButton: 'No',
    this.hintText,
    this.labelText,
    @required this.onPressedYes,
    @required this.onPressedNo,
  })  : assert(hintText != null),
        assert(labelText != null);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      titlePadding: EdgeInsets.fromLTRB(16, 16, 16, 8),
      contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      backgroundColor: Colors.white,
      elevation: 2.0,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      semanticLabel: semanticLabel,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      children: <Widget>[
        Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: hintText,
                labelText: labelText,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    yesButton,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: onPressedYes,
                ),
                FlatButton(
                  child: Text(
                    noButton,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: onPressedNo,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
