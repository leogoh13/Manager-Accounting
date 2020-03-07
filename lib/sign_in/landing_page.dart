import 'package:improving_your_ui/home_page_bottom_navigation_bar.dart';
import 'package:improving_your_ui/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:improving_your_ui/sign_in/sign_in_page.dart';

class LandingPage extends StatelessWidget {
  LandingPage({@required this.auth});
  final AuthBase auth;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User user = snapshot.data;
            if (user == null) {
              return SignInPage(
                auth: auth,
              );
            } else {
              return BottomBarAppNavigator();
            }
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
