import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../google_sign_in.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showDialog(String username) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
              title: const Text('Logged in with google'),
              content: Text('Welcome $username')));
    }

    return Stack(
      children: <Widget>[
        Container(
            foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login_background.jpg'),
                    fit: BoxFit.fill))),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Card(
                elevation: 20,
                color: Color.fromRGBO(106, 49, 89, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        color: Color.fromRGBO(95, 50, 80, 1),
                        width: double.infinity,
                        child: Center(
                            child: const Text(
                          "T'CHALLA",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ))),
                    Container(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Center(
                              child: const Text(
                            'SIGN IN',
                            style: TextStyle(color: Colors.white),
                          )),
                          Container(height: 10),
                          FractionallySizedBox(
                              widthFactor: 1,
                              child: RaisedButton.icon(
                                  icon: Image.asset(
                                    'assets/google_logo.png',
                                    height: 30,
                                    alignment: Alignment.bottomLeft,
                                  ),
                                  label: const Text('Sign in with Google'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(5)),
                                  color: Colors.white,
                                  textColor: Colors.grey,
                                  onPressed: () async{
                                    var user = await signInWithGoogle();
                                    _showDialog(user.displayName);
                                  })),
                          FractionallySizedBox(
                            widthFactor: 1,
                            child: RaisedButton.icon(
                              label: const Text('Sign in with Facebook'),
                              icon: Image.asset('assets/facebook.png'),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(5)),
                              color: Color.fromRGBO(59, 89, 152, 1),
                              textColor: Colors.white,
                              onPressed: () => signOutGoogle(),
                            ),
                          ),
                          Container(height: 10),
                          Row(children: <Widget>[
                            Container(
                                color: Colors.grey[300],
                                width: 95,
                                height: 0.5),
                            Padding(
                                padding: EdgeInsets.only(right: 10, left: 10),
                                child: const Text(
                                  'or',
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                color: Colors.grey[300],
                                width: 95,
                                height: 0.5),
                          ]),
                          Container(height: 10),
                          Align(
                              child: const Text('Email',
                                  style: TextStyle(color: Colors.white)),
                              alignment: Alignment.centerLeft),
                          CupertinoTextField(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadiusDirectional.circular(5)),
                          ),
                          Container(height: 10),
                          FractionallySizedBox(
                              widthFactor: 1,
                              child: RaisedButton(
                                child: const Text('Next'),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(5)),
                                color: Color.fromRGBO(57, 86, 159, 1),
                                textColor: Colors.white,
                                onPressed: () => {},
                              )),
                          Container(height: 60),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        )
      ],
    );
  }
}
