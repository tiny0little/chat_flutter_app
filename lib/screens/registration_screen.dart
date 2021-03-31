import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:chat_flutter_app/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'Registration Screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Hero(
              tag: 'logo',
              child: Icon(Icons.bolt, size: 150, color: cLogoColor),
            ),
          ),
          SizedBox(height: kPadding1),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(hintText: 'e-mail'),
                onChanged: (value) {
                  email = value;
                },
              ),
            ),
          ),
          SizedBox(height: kPadding1),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(hintText: 'password'),
                onChanged: (value) {
                  email = value;
                },
              ),
            ),
          ),
          SizedBox(height: kPadding1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: CupertinoButton.filled(
              borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
              child: Text('Register', style: cMyButtonTextStyle),
              onPressed: () {},
            ),
          ),
          SizedBox(height: kPadding1 * 2),
        ],
      ),
    );
  }
}
