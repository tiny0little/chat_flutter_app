import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

import 'package:chat_flutter_app/resources.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'Login Screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(title: Text('Login', style: cMyTextStyle1)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Hero(
                tag: 'logo',
                child: Icon(Icons.bolt, size: 200, color: cLogoColor),
              ),
            ),
            SizedBox(height: kPadding1),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: kTextFieldDecoration.copyWith(hintText: 'e-mail'),
                  validator: (value) => EmailValidator.validate(value)
                      ? null
                      : "Please enter a valid email",
                  onChanged: (value) {
                    email = value;
                  },
                ),
              ),
            ),
            SizedBox(height: kPadding1),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'password'),
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
            ),
            SizedBox(height: kPadding1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: CupertinoButton.filled(
                borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
                child: Text('Login', style: cMyTextStyle1),
                onPressed: () async {
                  if (formKey.currentState.validate()) {
                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (newUser != null) {
                        Navigator.pop(context);
                      }
                    } catch (e) {
                      await Alert(
                        context: context,
                        title: "ERROR",
                        desc: "$e",
                        buttons: [
                          DialogButton(
                              child: Text("OK", style: cMyTextStyle1),
                              onPressed: () => Navigator.pop(context))
                        ],
                      ).show();
                    }
                  }
                },
              ),
            ),
            SizedBox(height: kPadding1),
          ],
        ),
      ),
    );
  }
}
