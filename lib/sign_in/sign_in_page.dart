import 'package:improving_your_ui/services/auth.dart';
import 'package:improving_your_ui/sign_in/email_sign_in_page.dart';
import 'package:improving_your_ui/sign_in/sign_in_button.dart';
import 'package:improving_your_ui/sign_in/sign_in_progress_dialog.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({@required this.auth});
  final AuthBase auth;

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  SignInPageProgressDialog _progressDialog;
  Future<void> _signAnonymously() async {
    try {
      _progressDialog.showDialog('Sign in anonymously');
      await widget.auth.signAnonymously();
      _progressDialog.dismiss();
    } catch (e) {
      print(e.toString());
    }
  }
  Future<void> _signInWithGoogle() async {
    try {
      _progressDialog.showDialog('Signing in with Google');
      await widget.auth.signInWithGoogle();
      _progressDialog.dismiss();
    } catch (e) {
      print(e.toString());
    }
  }
  void _signInWithEmailAndPassword(BuildContext context) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EmailSignInPage(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _progressDialog = new SignInPageProgressDialog(context: context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account Manager',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 2.0,
        centerTitle: true,
      ),
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
            textScaleFactor: 2.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign in with Google',
            color: Colors.white,
            textColor: Colors.black87,
            onPressed: _signInWithGoogle,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Sign in with Email',
            color: Colors.teal[700],
            textColor: Colors.white,
            onPressed: () {
              _signInWithEmailAndPassword(context);
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'or',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Go as guest',
            color: Colors.yellow[400],
            textColor: Colors.black87,
            onPressed: _signAnonymously,
          ),
        ],
      ),
    );
  }
}
