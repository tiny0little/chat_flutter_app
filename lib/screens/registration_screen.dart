import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'Registration Screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Icon(Icons.bolt, size: 200, color: Colors.amberAccent),
          ),
          Expanded(
            child: TextField(),
          ),
        ],
      ),
    );
  }
}
