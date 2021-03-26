import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _incrementCounter,
          child: Text('Increment Counter'),
        ),
      ),
    ),
  ));
}

_incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String counter = prefs.getString('token');
  print('Pressed $counter times.');
  await prefs.setString('token', counter);
}