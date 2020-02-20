import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/login/login.dart';
import 'screens/login/clases/toggler.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => Switcher(),
    child: MyApp(),
  )
  );

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
