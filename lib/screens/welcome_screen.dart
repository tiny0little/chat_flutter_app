import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'Welcome Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Icon(Icons.bolt, size: 200, color: Colors.amberAccent),
          ),
          Expanded(child: CupertinoButton())
        ],
      ),
    );
  }
}
