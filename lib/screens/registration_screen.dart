import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:chat_flutter_app/resources.dart';
import 'package:chat_flutter_app/screens/chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'Registration Screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
              padding: const EdgeInsets.symmetric(
                  vertical: 8, horizontal: kPadding1),
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
              padding: const EdgeInsets.symmetric(
                  vertical: 8, horizontal: kPadding1),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(hintText: 'password'),
                onChanged: (value) {
                  password = value;
                },
              ),
            ),
            SizedBox(height: kPadding1),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8, horizontal: kPadding1),
              child: CupertinoButton.filled(
                  borderRadius:
                      BorderRadius.all(Radius.circular(kBorderRadius)),
                  child: Text('Register', style: cMyTextStyle1),
                  onPressed: () async {
                    if (formKey.currentState.validate()) {
                      try {
                        final newUser = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        if (newUser != null) {
                          Navigator.pushNamed(context, ChatScreen.id);
                        }
                      } catch (e) {
                        await myAlert(context: context, message: e.toString());
                      }
                    }
                  }),
            ),
            SizedBox(height: kPadding1),
          ],
        ),
      ),
    );
  }
}
