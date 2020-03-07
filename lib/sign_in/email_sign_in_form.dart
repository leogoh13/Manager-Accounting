import 'package:improving_your_ui/common_files/email_sign_in_button.dart';
import 'package:improving_your_ui/sign_in/sign_in_progress_dialog.dart';
import 'package:flutter/material.dart';

enum EmailSignInFormType { signIn, register }

class EmailSignInForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EmailSignInFormState();
}

class _EmailSignInFormState extends State<EmailSignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  EmailSignInFormType _formType = EmailSignInFormType.signIn;
  String _primaryText = 'Sign In';
  String _secondaryText = 'Need an account? Register';
  Color _submitButtonColor = Colors.indigo;
  SignInPageProgressDialog _progressDialog;

  void _submit() {
    // TODO: Not beautiful.
    _progressDialog.showDialog('Signing in with email and password');
    print(
        'email: ${_emailController.text}, password: ${_passwordController.text}');
    _progressDialog.dismiss();
  }

  void _toggleSignInAndRegister() {
    setState(() {
      _formType = _formType == EmailSignInFormType.signIn
          ? EmailSignInFormType.register
          : EmailSignInFormType.signIn;
      print(_formType);
      _primaryText =
      _formType == EmailSignInFormType.signIn ? 'Sign In' : 'Register';
      _secondaryText = _formType == EmailSignInFormType.signIn
          ? 'Need an account? Register'
          : 'Have an account? Sign in';
      _submitButtonColor = _formType == EmailSignInFormType.signIn ? Colors.indigo : Colors.redAccent;
      _emailController.clear();
      _passwordController.clear();
    });
  }

  List<Widget> _buildChildren() {
    print(_formType);
    return <Widget>[
      TextField(
        controller: _emailController,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'example@gmail.com',
        ),
      ),
      SizedBox(
        height: 8.0,
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(
          labelText: 'Password',
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 16.0,
      ),
      EmailSignInSubmitButton(
        color: _submitButtonColor,
        text: _primaryText,
        onPressed: _submit,
      ),
      SizedBox(
        height: 8.0,
      ),
      FlatButton(
        child: Text(
          _secondaryText,
        ),
        onPressed: _toggleSignInAndRegister,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    _progressDialog = new SignInPageProgressDialog(context: context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
