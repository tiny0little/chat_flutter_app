import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:chat_flutter_app/resources.dart';

class ChatScreen extends StatefulWidget {
  static const id = 'Chat Screen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat', style: cMyTextStyle1)),
      body: Text(_auth.currentUser.toString()),
    );
  }
}
