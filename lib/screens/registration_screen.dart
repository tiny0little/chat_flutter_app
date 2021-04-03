import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:email_validator/email_validator.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:chat_flutter_app/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'Registration Screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registration', style: cMyTextStyle1),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Hero(
                tag: 'logo',
                child: Icon(Icons.bolt, size: 200, color: cLogoColor),
              ),
            ),
            SizedBox(height: kPadding1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
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
            SizedBox(height: kPadding1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(hintText: 'password'),
                onChanged: (value) {
                  password = value;
                },
              ),
            ),
            SizedBox(height: kPadding1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: CupertinoButton.filled(
                borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
                child: Text('Register', style: cMyTextStyle1),
                onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pop(context);
                    }
                  } catch (e) {
                    print(e);
                  }
                  await Alert(
                    context: context,
                    title: "ERROR",
                    desc: "Please validate your input",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "OK",
                          style: cMyTextStyle1,
                        ),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ).show();
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
