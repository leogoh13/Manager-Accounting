import 'package:flutter/material.dart';

/// CustomAlertDialog uses [AlertDialog]
/// Can enter [title], [content], and [actions] (FlatButton is mostly used for action)
/// The actions will be placed starting from the bottom right side.

class CustomAlertDialog extends StatelessWidget {
  final List<Widget> actionWidgetChildren;
  final Widget dialogContent;
  final String title;
  final double borderRadius;

  CustomAlertDialog({
    @required this.title,
    @required this.dialogContent,
    @required this.actionWidgetChildren,
    this.borderRadius: 2.0,
  }) : assert(actionWidgetChildren != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.fromLTRB(16, 16, 16, 8),
      contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      backgroundColor: Colors.white,
      elevation: 2.0,
      title: Text(title),
      actions: actionWidgetChildren,
      content: dialogContent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}
