import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:chat_flutter_app/constants.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'Welcome Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Icon(Icons.bolt, size: 200, color: Colors.amberAccent),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              child: CupertinoButton.filled(
                onPressed: () {},
                child: Text('Register', style: myButtonTextStyle),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              child: CupertinoButton.filled(
                onPressed: () {},
                child: Text('Login', style: myButtonTextStyle),
              ),
            ),
          ),
          Expanded(
              child: SizedBox(
            height: 32,
          ))
        ],
      ),
    );
  }
}
