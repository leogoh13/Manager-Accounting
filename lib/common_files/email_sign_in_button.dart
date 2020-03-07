import 'package:flutter/material.dart';
import 'package:improving_your_ui/common_files/custom_raised_button.dart';

class EmailSignInSubmitButton extends CustomRaisedButton {
  EmailSignInSubmitButton({
    @required String text,
    @required Color color,
    VoidCallback onPressed,
  }): super(
    child: Text(
      text,
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.white,
      ),
    ),
    color: color,
    onPressed: onPressed,
  );
}
