import 'package:flutter/material.dart';

class FacebookSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.only(left: 1.5, right: 20),
      color: Color.fromRGBO(24, 119, 242, 1),
      onPressed: () => {},
      child: Row(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(4.5),
              child: Image.asset('assets/facebook.png', height: 25,),
            )),
        Spacer(),
        const Text('Continuar con Facebook', style: TextStyle(color: Colors.white, fontSize: 15),)
      ],),
    );
  }
}
