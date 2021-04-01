import 'dart:ui';

import 'package:flutter/material.dart';

const cMyTextStyle1 = TextStyle(
    fontSize: 31, fontFamily: 'AdventPro', fontWeight: FontWeight.w500);
const cLogoColor = Colors.amberAccent;

const kPadding1 = 32.0;
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
