import 'package:flutter/material.dart';
import 'package:improving_your_ui/common_files/yes_no_dialog.dart';

class EditDialog extends CustomYesNoDialog {
  final Color color;
  final double borderRadius;
  final BuildContext context;

  EditDialog({
    this.context,
    this.color,
    this.borderRadius: 5.0,
  }) : super(
          title: 'Edit name account',
          labelText: 'Account name',
          hintText: 'Enter a new name',
          onPressedYes: () {Navigator.pop(context);},
          onPressedNo: () { Navigator.pop(context);},
          borderRadius: borderRadius,
          dialogContent: Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Enter account name',
                ),
              ),
            ),
          ),
        );
}
