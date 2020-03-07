import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class SignInPageProgressDialog extends ProgressDialog {
  SignInPageProgressDialog({
    @required this.context,
    this.progressWidgetColor: Colors.grey,
    this.fontSize: 20.0,
    this.fontColor: Colors.black87,
    this.backgroundDialogColor: Colors.white,
    this.borderRadius: 4.0,
  }) : super(context);

  final BuildContext context;
  final Color backgroundDialogColor;
  final Color fontColor;
  final double fontSize;
  final Color progressWidgetColor;
  final double borderRadius;

  void showDialog(String text) {
    super.style(
      message: text,
      backgroundColor: backgroundDialogColor,
      progressWidget: CircularProgressIndicator(
        backgroundColor: progressWidgetColor,
      ),
      messageTextStyle: TextStyle(
        fontSize: fontSize,
        color: fontColor,
      ),
      elevation: 2.0,
      borderRadius: borderRadius,
    );
    show();
  }

  void dismiss() {
    super.dismiss();
  }

  Future<bool> show() {
    return super.show();
  }

  @override
  void update({double progress, double maxProgress, String message, Widget progressWidget, TextStyle progressTextStyle, TextStyle messageTextStyle}) {
    // TODO: implement update
//    super.update(progress, maxProgress, message, progressWidget, progressTextStyle, messageTextStyle);
  }
}
