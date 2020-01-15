import 'package:flutter/material.dart';
import './screens/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tachartas',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.pinkAccent
      ),
      home: Scaffold(body: Login(), backgroundColor: Colors.grey[300], resizeToAvoidBottomPadding: false,),
    );
  }
}
