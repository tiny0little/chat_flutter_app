import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:chat_flutter_app/resources.dart';

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
        title: Text('Chat', style: cMyTextStyle1),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              try {
                await FirebaseAuth.instance.signOut();
                Navigator.pop(context);
              } catch (e) {
                await myAlert(context: context, message: e);
              }
            },
          ),
        ],
      ),
      body: Text(FirebaseAuth.instance.currentUser.toString()),
    );
  }
}
