// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const cMyTextStyle1 = TextStyle(
    color: Colors.white,
    fontSize: 27,
    fontFamily: 'AdventPro',
    fontWeight: FontWeight.w500);
const cMyTextStyle2 = TextStyle(
    color: Colors.white,
    fontSize: 19,
    fontFamily: 'AdventPro',
    fontWeight: FontWeight.w600);
const cLogoColor = Colors.amberAccent;

const kPadding1 = 16.0;
const kBorderRadius = 32.0;
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(kBorderRadius))),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(kBorderRadius))),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(kBorderRadius))),
);

Future<void> myAlert(
    {@required BuildContext context, @required String message}) async {
  await Alert(
    context: context,
    title: "ERROR",
    desc: message,
    buttons: [
      DialogButton(
          child: Text("OK", style: cMyTextStyle1),
          onPressed: () => Navigator.pop(context))
    ],
  ).show();
}
