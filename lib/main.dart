import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:chat_flutter_app/screens/registration_screen.dart';
import 'package:chat_flutter_app/screens/welcome_screen.dart';
import 'package:chat_flutter_app/screens/login_screen.dart';
import 'package:chat_flutter_app/screens/chat_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    ),
  );
}
