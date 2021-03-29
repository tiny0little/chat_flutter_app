import 'package:flutter/material.dart';

import 'package:chat_flutter_app/screens/registration_screen.dart';
import 'package:chat_flutter_app/screens/welcome_screen.dart';
import 'package:chat_flutter_app/screens/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    ),
  );
}
