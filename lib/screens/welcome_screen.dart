import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:chat_flutter_app/constants.dart';
import 'package:chat_flutter_app/screens/login_screen.dart';
import 'package:chat_flutter_app/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'Welcome Screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Hero(
              tag: 'logo',
              child: Icon(Icons.bolt, size: 400, color: cLogoColor),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: kPadding1),
            child: CupertinoButton.filled(
              borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              child: Text('Register', style: cMyButtonTextStyle),
            ),
          ),
          SizedBox(height: kPadding1),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: kPadding1),
            child: CupertinoButton.filled(
              borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: Text('Login', style: cMyButtonTextStyle),
            ),
          ),
          SizedBox(height: kPadding1 * 2),
        ],
      ),
    );
  }
}
