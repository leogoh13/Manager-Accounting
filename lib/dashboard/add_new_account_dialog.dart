import 'package:flutter/material.dart';
import 'package:improving_your_ui/common_files/yes_no_dialog.dart';

class AddNewAccountDialog extends CustomYesNoDialog {
  final Color color;
  final double borderRadius;
  final BuildContext context;

  AddNewAccountDialog({
    this.context,
    this.color,
    this.borderRadius: 5.0,
  }) : super(
    title: 'Edit name account',
    hintText: 'Enter a new account ',
    labelText: 'Account name',
    onPressedYes:() {},
    onPressedNo:() {
      Navigator.pop(context);
    },
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
