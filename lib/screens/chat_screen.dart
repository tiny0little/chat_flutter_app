import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:chat_flutter_app/resources.dart';
import 'package:chat_flutter_app/screens/welcome_screen.dart';

class ChatScreen extends StatefulWidget {
  static const id = 'Chat Screen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(FirebaseAuth.instance.currentUser.email, style: cMyTextStyle1),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              try {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacementNamed(context, WelcomeScreen.id);
              } catch (e) {
                await myAlert(context: context, message: e.toString());
              }
            },
          ),
        ],
      ),
      body: Text(FirebaseFirestore.instance
          .collection('messages').

    );
  }
}
