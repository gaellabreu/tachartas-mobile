import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.only(left: 1.5, right: 20),
      color: Color.fromRGBO(66, 133, 244, 1),
      onPressed: () => {},
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(4.5),
              child: Image.asset('assets/google_logo.png', height: 25,),
            )),
        Spacer(),
        const Text('Continuar con Google', style: TextStyle(color: Colors.white, fontSize: 15),)
      ],),
    );
  }
}
