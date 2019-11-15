import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login_background.jpg'),
                    fit: BoxFit.fill))),
        Align(
          alignment: Alignment.center,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    RaisedButton(
                      child: const Text('Google'),
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () => {},
                    ),
                    RaisedButton(
                      child: const Text('Facebook'),
                      onPressed: () => {},
                    ),
                  ],
                ),
                Divider(),
                Padding(
                    padding: EdgeInsets.only(left: 60, right: 60),
                    child: Column(children: <Widget>[
                      TextField(
                          decoration: InputDecoration(hintText: 'Usuario')),
                      TextField(
                          decoration: InputDecoration(hintText: 'Contraseña')),
                        RaisedButton(child: const Text('Iniciar sesión'), onPressed: () => {},)
                    ])),
                
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {/* ... */},
                      ),
                      FlatButton(
                        child: const Text('LISTEN'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
